
`timescale 1 ps / 1 ps

// `define DDR3

module  {{cookiecutter.project_name}} (
        //Reset and Clocks
        input          fpga_resetn,
        input          clk_ddr3_100_p,
        input          clk_50_max10,
        input          clk_25_max10,
        input          clk_lvds_125_p,
        input          clk_10_adc,

        //LED PB DIPSW
        output  [4:0]  user_led,
        input   [3:0]  user_pb,
        input   [4:0]  user_dipsw,

        //USB
        input          usb_resetn,
        input          usb_wrn,
        input          usb_rdn,
        input          usb_oen,
        inout   [1:0]  usb_addr,
        inout   [7:0]  usb_data,
        output         usb_full,
        output         usb_empty,
        inout          usb_scl,
        inout          usb_sda,
        input          usb_clk,

`ifdef DDR3
        //DDR3
        output  [13:0] ddr3_a,
        output  [2:0]  ddr3_ba,
        output  [0:0]  ddr3_clk_p,
        output  [0:0]  ddr3_clk_n,
        output  [0:0]  ddr3_cke,
        output  [0:0]  ddr3_csn,
        output  [2:0]  ddr3_dm,
        output  [0:0]  ddr3_rasn,
        output  [0:0]  ddr3_casn,
        output  [0:0]  ddr3_wen,
        output         ddr3_resetn,
        inout   [23:0] ddr3_dq,
        inout   [2:0]  ddr3_dqs_p,
        //inout [2:0]  ddr3_dqs_n,
        output  [0:0]  ddr3_odt,
`endif

        //Dual Ethernet
        output         enet_mdc,
        inout          enet_mdio,
        input          eneta_rx_clk,
        output         eneta_tx_en,
        output         eneta_gtx_clk,
        input   [3:0]  eneta_rx_d,
        output  [3:0]  eneta_tx_d,
        input          eneta_rx_dv,
        output         eneta_resetn,
        input          eneta_led_link100,
        input          enetb_rx_clk,
        output         enetb_tx_en,
        output         enetb_gtx_clk,
        input   [3:0]  enetb_rx_d,
        output  [3:0]  enetb_tx_d,
        input          enetb_rx_dv,
        output         enetb_resetn,
        input          enetb_led_link100,

        //UART
        input          uart_rx,
        output         uart_tx,

        //HSMC
        input   [2:1]  hsmc_clk_in_p,
        input          hsmc_clk_in0,
        output  [2:1]  hsmc_clk_out_p,
        inout   [3:0]  hsmc_d,
        input   [16:0] hsmc_rx_d_p,
        output  [16:0] hsmc_tx_d_p,
        inout          hsmc_scl,
        inout          hsmc_sda,
        output         hsmc_clk_out0,
        input          hsmc_prsntn,

        //HDMI
        inout          hdmi_scl,
        inout          hdmi_sda,
        output         hdmi_tx_clk,
        output  [23:0] hdmi_tx_d,
        output         hdmi_tx_de,
        output         hdmi_tx_hs,
        output         hdmi_tx_int,
        output         hdmi_tx_vs,

        //PMOD
        inout   [7:0]  pmoda_io,
        inout   [7:0]  pmodb_io,

        //QSPI
        output         qspi_clk,
        inout   [3:0]  qspi_io,
        output         qspi_csn,

        //DAC
        output         dac_sync,
        output         dac_sclk,
        output         dac_din,

        //ADC
        input   [8:1]  adc1in,
        input   [8:1]  adc2in,

        //Security and Safe settings
        output         ip_sequrity,
        output         jtag_safe
        );

endmodule
