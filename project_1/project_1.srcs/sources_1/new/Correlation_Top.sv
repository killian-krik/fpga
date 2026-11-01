`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/02 22:31:59
// Design Name: 
// Module Name: XadcUart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 7 - File Created
// Additional Comments:
// �޸ģ��ӳ�ʱ��ֵ����ɷ����仯�����ӳ�ʱ���õ����Էָ���ӳ�ʱ���õĶ����ָ
//////////////////////////////////////////////////////////////////////////////////
module Correlation_Top
(
	input                           	ipClk,                // Clock input for DRP
	input                           	ipRst_,
	// key
	input                               ipKey,
    // Ports of ADC
//    output                              op_clk_a,
//    input               [11:0]          ip_data_a,
//    input                               ip_tr_a,
    
//    output                              op_clk_b,
//    input               [11:0]          ip_data_b,
//    input                               ip_tr_b,
    // xadc
    input                               ipVauxP,
    input                               ipVauxN,	
    // Ports of Uart
	input                           	ipUartRx,
	output						        opUartTx,
	
	// led
	output              [3:0]           op_led
);

// data type
wire                [15:0]              clk_sample;
wire                                    txBpsEn;
wire                [ 7:0]              outRxData;				//�������ݼĴ���������ֱ����һ����������
wire                                    rxBpsEn;
wire                                    txDataIsReady;
wire                [ 7:0]              dataForTx;
//wire                [ 4:0]              channel;
wire                                    endOfConversion_a;
wire                                    endOfConversion_b;
//wire                                    endOfSequence;
//wire                                    adcBusy; 
wire                [ 7:0]              ordinal;
wire                [23:0]              meanOfData;
wire                [11:0]              data_a_from_adc;
wire                [11:0]              data_b_from_adc;
wire                [ 7:0]              numOfAverage;
wire                [31:0]              numOfdata;
wire                                    frameDone;
wire                                    clk100Mhz;
// functionlaity    
   
clk_wiz_0       clk_wiz_0_inst
 (
  // Clock out ports
  .clk_out1             (clk100Mhz),
  // Status and control signals
  .resetn               (ipRst_),
  .locked               (),
 // Clock in ports
  .clk_in1              (ipClk)
 );

//UartInputDataProcessing             UartInputDataProcessing_Inst
//(
//	.ipClk                             (clk100Mhz              ),
//    .ipRst_                            (ipRst_             ),
//	.iOutRxData                        (outRxData          ),
//    .iRxBpsEn                          (rxBpsEn            ),
//    .oClkSample                        (clk_sample         ),
//	.oNumOfAverage                     (numOfAverage       ),
//	.oNumOfdata                        (numOfdata          )
//);
/*
AD9226         AD9226_inst
(
    .ip_clk                             (clk100Mhz),
    .ip_rst_                            (ipRst_),
    .i_clk_sample                       (16'd49),
    // channel A
    .op_clk_a                           (op_clk_a),
    .ip_data_a                          (ip_data_a),
    .o_data_a_from_adc                  (data_a_from_adc),
    // channel B 
    .op_clk_b                           (op_clk_b),
    .ip_data_b                          (ip_data_b),
    .o_data_b_from_adc                  (data_b_from_adc),
    
    .o_end_of_conversion_a              (endOfConversion_a),
    .o_end_of_conversion_b              (endOfConversion_b)
 );
*/


wire                [ 4:0]      channel;
wire                            adcBusy;
wire                [15:0]      measAUX2; 
       
xadc_wiz_0      Xadc_inst
 (
        .daddr_in               ({2'b00, channel}),            // Address bus for the dynamic reconfiguration port
        .dclk_in                (clk100Mhz),             // Clock input for the dynamic reconfiguration port
        .den_in                 (endOfConversion_a),              // Enable Signal for the dynamic reconfiguration port
        .di_in                  (16'b0),               // Input data bus for the dynamic reconfiguration port
        .dwe_in                 (1'b0),              // Write Enable for the dynamic reconfiguration port
        .reset_in               (~ipRst_),            // Reset signal for the System Monitor control logic
//        .vauxp0                 (),              // Auxiliary channel 0
//        .vauxn0                 (),
        .busy_out               (adcBusy),            // ADC Busy signal
        .channel_out            (channel),         // Channel Selection Outputs
        .do_out                 (measAUX2),              // Output data bus for dynamic reconfiguration port
        .drdy_out               (),            // Data ready signal for the dynamic reconfiguration port
        .eoc_out                (endOfConversion_a),             // End of Conversion Signal
        .eos_out                (),             // End of Sequence Signal
        .ot_out                 (),              // Over-Temperature alarm output
        .vccaux_alarm_out       (),    // VCCAUX-sensor alarm output
        .vccint_alarm_out       (),    //  VCCINT-sensor alarm output
        .user_temp_alarm_out    (), // Temperature-sensor alarm output
        .alarm_out              (),           // OR'ed output of all the Alarms    
        .vp_in                  (ipVauxP),               // Dedicated Analog Input Pair
        .vn_in                  (ipVauxN)
);
assign     data_a_from_adc = measAUX2[15:4];

parameter	NUM_OF_CHANNEL = 11'd90;
wire        [23:0]          meanOfData_nn;
wire                        dataValid_nn;


Correlator
#(
     .NUM_OF_CHANNEL (NUM_OF_CHANNEL)
)
Correltor_Inst
(
    .ipClk								(clk100Mhz              ),
    .ipRst_          					(ipRst_             ),
    .iData1FromADC                      (data_a_from_adc    ),
    .iData2FromADC    					(data_a_from_adc    ),
    .iEndOfConversion_1					(endOfConversion_a  ),  
    .iEndOfConversion_2					(endOfConversion_a  ),   
    .iOrdinal        					(ordinal            ),
    .iNumOfAverage                      (8'd20),//(8'd20      ),
    .iNumOfdata                         (32'd1048576),//(32'd1048576         ),
    .oMeanOfData     					(meanOfData         ),
    .oFrameDone                         (frameDone),
    .oMeanOfData_nn                     (meanOfData_nn),
    .oDataValid_nn                      (dataValid_nn)
);

wire            uart_busy;
wire            uart_tx_done;
wire            uart_tx_trig;
wire    [7:0]   uart_tx_data;
localparam DATA_WIDTH = 24;
Uart_data_ready
#(
    .DATA_WIDTH      (DATA_WIDTH),                  // 支持 16/24/32，必须是8的整数倍
    .NUM_OF_CHANNEL  (NUM_OF_CHANNEL)      // 有效通道：0 ~ NUM_OF_CHANNEL-1
)Uart_data_ready_inst
(
    .ipClk              (clk100Mhz),          // 系统时钟，与Uart_8bits同源
    .ipRst_             (ipRst_),         // 异步复位(低有效)
    .i_start_pulse      (frameDone),
    // 与Uart_8bits的交互接口
   
    .i_uart_busy        (uart_busy),    // 来自Uart_8bits的发送忙标志(o_tx_busy)
    .i_uart_done        (uart_tx_done),    // 来自Uart_8bits的发送完成标志(o_tx_done)
    .o_uart_trig        (uart_tx_trig),// 触发Uart_8bits发送的信号(i_trig)
    .o_uart_data        (uart_tx_data),    // 发送给Uart_8bits的数据(i_tx_data)
    // 外部数据输入接口
    .i_data             (meanOfData),         // 待发送的16位原始数据
    .o_ordinal          (ordinal),       // 当前发送的通道序号
    .o_transmitting     () 
); 

Uart_8bits #(
    .CLK_FREQ  (100_000_000),  // 时钟频率
    .BAUD_RATE (115200),      // 波特率
    .DATA_BITS (8),           // 数据位宽度
    .STOP_BITS (1),           // 停止位数量
    .PARITY_EN (1),           // 校验位使能(0:禁用,1:启用)
    .PARITY_TYPE (1)            // 校验类型(0:奇校验,1:偶校验)
)
Uart_8bits_inst
(
    .i_clk              (clk100Mhz),        // 系统时钟
    .i_rst_n            (ipRst_),      // 异步复位(低有效)
    // 接收接口
    .i_rx               (ipUartRx),         // 串口接收数据
    .o_rx_data          (rx_data),        // 接收数据输出
    .o_rx_done          (rx_done),    // 接收完成标志
    .o_rx_err           (),     // 接收错误标志
    // 发送接口
    .i_tx_data          (uart_tx_data),    // 发送数据
    .i_trig             (uart_tx_trig),       // 发送触发信号
    .o_tx               (opUartTx),         // 串口发送数据
    .o_tx_busy          (uart_busy),    // 发送忙标志
    .o_tx_done          (uart_tx_done)     // 发送完成标志
);

//===============================================神经网络========================
Neural_network #(
    .IN_FEATURES    (NUM_OF_CHANNEL),
    .OUT_FEATURES   (3),
    .BIT_WIDTH      (8),
    .PARREL         (1),
    .RAW_DATA_W     (24)    
)Neural_network_inst(
    .i_clk          (clk100Mhz),
    .i_rst_n        (ipRst_),
    .op_seg_en      (op_seg_en),
    .op_seg_data    (op_seg_data),
    .op_led         (op_led),
    .raw_sig        (meanOfData_nn),
    .raw_valid      (dataValid_nn)
);

endmodule