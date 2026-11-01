`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/29 19:34:16
// Design Name: 
// Module Name: Uart_8bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module Uart_8bits #(
    parameter CLK_FREQ    = 50_000_000,  // ʱ��Ƶ��
    parameter BAUD_RATE   = 115200,      // ������
    parameter DATA_BITS   = 8,           // ����λ���
    parameter STOP_BITS   = 1,           // ֹͣλ����
    parameter PARITY_EN   = 0,           // У��λʹ��(0:����,1:����)
    parameter PARITY_TYPE = 0            // У������(0:��У��,1:żУ��)
)(
    input                   i_clk,        // ϵͳʱ��
    input                   i_rst_n,      // �첽��λ(����Ч)
    // ���սӿ�
    input                   i_rx,         // ���ڽ�������
    output reg [DATA_BITS-1:0] o_rx_data,  // �����������
    output reg              o_rx_done,    // ������ɱ�־
    output reg              o_rx_err,     // ���մ����־
    // ���ͽӿ�
    input [DATA_BITS-1:0]   i_tx_data,    // ��������
    input                   i_trig,       // ���ʹ����ź�
    output reg              o_tx,         // ���ڷ�������
    output reg              o_tx_busy,    // ����æ��־
    output reg              o_tx_done     // ������ɱ�־
);

// ���㲨���ʷ�Ƶϵ��
localparam BAUD_DIV = CLK_FREQ / BAUD_RATE;
localparam BAUD_CNT_WIDTH = $clog2(BAUD_DIV);

// ����״̬������
localparam RX_IDLE      = 3'd0,  // ����״̬
           RX_START     = 3'd1,  // ��ʼλ״̬
           RX_DATA      = 3'd2,  // ����λ״̬
           RX_PARITY    = 3'd3,  // У��λ״̬
           RX_STOP      = 3'd4;  // ֹͣλ״̬

// ����״̬������
localparam TX_IDLE      = 3'd0,  // ����״̬
           TX_START     = 3'd1,  // ��ʼλ״̬
           TX_DATA      = 3'd2,  // ����λ״̬
           TX_PARITY    = 3'd3,  // У��λ״̬
           TX_STOP      = 3'd4;  // ֹͣλ״̬

// ����״̬������
reg [2:0]                   rx_state;
reg [BAUD_CNT_WIDTH-1:0]    rx_baud_cnt;
reg [2:0]                   rx_bit_cnt;
reg [DATA_BITS-1:0]         rx_data_reg;
reg                         rx_parity;

// ����״̬������
reg [2:0]                   tx_state;
reg [BAUD_CNT_WIDTH-1:0]    tx_baud_cnt;
reg [2:0]                   tx_bit_cnt;
reg [DATA_BITS-1:0]         tx_data_reg;
reg                         tx_parity;

// ����״̬���߼�
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        rx_state    <= RX_IDLE;
        rx_baud_cnt <= 0;
        rx_bit_cnt  <= 0;
        rx_data_reg <= 0;
        rx_parity   <= 0;
        o_rx_data   <= 0;
        o_rx_done   <= 0;
        o_rx_err    <= 0;
    end else begin
        o_rx_done <= 0;
        o_rx_err  <= 0;
        
        case (rx_state)
            RX_IDLE: begin
                if (!i_rx) begin  // ��⵽��ʼλ(�͵�ƽ)
                    rx_baud_cnt <= 0;
                    rx_state    <= RX_START;
                end
            end
            
            RX_START: begin
                if (rx_baud_cnt == BAUD_DIV / 2 - 1) begin  // �е����
                    rx_baud_cnt <= 0;
                    if (!i_rx) begin  // ȷ����ʼλ
                        rx_state <= RX_DATA;
                        rx_bit_cnt <= 0;
                        rx_parity <= 0;
                    end else begin  // �����ʼλ���ص�����
                        rx_state <= RX_IDLE;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_DATA: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_data_reg[rx_bit_cnt] <= i_rx;
                    rx_parity <= rx_parity ^ i_rx;  // ����У��λ
                    
                    if (rx_bit_cnt == DATA_BITS - 1) begin
                        if (PARITY_EN) begin
                            rx_state <= RX_PARITY;
                        end else begin
                            rx_state <= RX_STOP;
                        end
                    end else begin
                        rx_bit_cnt <= rx_bit_cnt + 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_PARITY: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_state <= RX_STOP;
                    
                    // У��λ������
                    if ((PARITY_TYPE == 0 && i_rx != ~rx_parity) ||  // ��У��
                        (PARITY_TYPE == 1 && i_rx != rx_parity)) begin  // żУ��
                        o_rx_err <= 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            RX_STOP: begin
                if (rx_baud_cnt == BAUD_DIV - 1) begin
                    rx_baud_cnt <= 0;
                    rx_bit_cnt <= 0;
                    rx_state <= RX_IDLE;
                    
                    if (i_rx) begin  // ֹͣλ��ȷ(�ߵ�ƽ)
                        o_rx_data <= rx_data_reg;
                        o_rx_done <= 1;
                    end else begin  // ֹͣλ����
                        o_rx_err <= 1;
                    end
                end else begin
                    rx_baud_cnt <= rx_baud_cnt + 1;
                end
            end
            
            default: rx_state <= RX_IDLE;
        endcase
    end
end

// ����״̬���߼��������͵��ֽڣ�
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        tx_state    <= TX_IDLE;
        tx_baud_cnt <= 0;
        tx_bit_cnt  <= 0;
        tx_data_reg <= 0;
        tx_parity   <= 0;
        o_tx        <= 1;  // ����ʱΪ�ߵ�ƽ
        o_tx_busy   <= 0;
        o_tx_done   <= 0;
    end else begin
        o_tx_done <= 0;
        
        case (tx_state)
            TX_IDLE: begin
                o_tx <= 1;  // ����״̬Ϊ�ߵ�ƽ
                if (i_trig && !o_tx_busy) begin  // ��⵽�����ź��Ҳ�æ
                    o_tx_busy   <= 1;
                    tx_data_reg <= i_tx_data;  // �����ص��ֽ�����
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_START;
                end else begin
                    o_tx_busy <= 0;
                end
            end
            
            TX_START: begin
                o_tx <= 0;  // ��ʼλ(�͵�ƽ)
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_bit_cnt  <= 0;
                    tx_parity   <= 0;
                    tx_state    <= TX_DATA;
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_DATA: begin
                o_tx <= tx_data_reg[tx_bit_cnt];  // ��������λ
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_parity <= tx_parity ^ tx_data_reg[tx_bit_cnt];  // ����У��λ
                    
                    if (tx_bit_cnt == DATA_BITS - 1) begin
                        if (PARITY_EN) begin
                            tx_state <= TX_PARITY;
                        end else begin
                            tx_state <= TX_STOP;
                        end
                    end else begin
                        tx_bit_cnt <= tx_bit_cnt + 1;
                    end
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_PARITY: begin
                // ����У��λ
                o_tx <= (PARITY_TYPE == 0) ? ~tx_parity : tx_parity;
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_STOP;
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            TX_STOP: begin
                o_tx <= 1;  // ֹͣλ(�ߵ�ƽ)
                if (tx_baud_cnt == BAUD_DIV - 1) begin
                    tx_baud_cnt <= 0;
                    tx_state    <= TX_IDLE;
                    o_tx_done   <= 1;
                    o_tx_busy   <= 0;  // ���ֽڷ������
                end else begin
                    tx_baud_cnt <= tx_baud_cnt + 1;
                end
            end
            
            default: tx_state <= TX_IDLE;
        endcase
    end
end

endmodule
