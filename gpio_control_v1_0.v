
`timescale 1 ns / 1 ps

	module gpio_control_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface Ash_AXI
		parameter integer C_Ash_AXI_DATA_WIDTH	= 32,
		parameter integer C_Ash_AXI_ADDR_WIDTH	= 4,
		parameter LED_WIDTH =8,
		parameter SWITCH_WIDTH =8
	)
	(
		// Users to add ports here
        output [LED_WIDTH-1:0] leds,
        input  [SWITCH_WIDTH-1:0] switches,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface Ash_AXI
		input wire  ash_axi_aclk,
		input wire  ash_axi_aresetn,
		input wire [C_Ash_AXI_ADDR_WIDTH-1 : 0] ash_axi_awaddr,
		input wire [2 : 0] ash_axi_awprot,
		input wire  ash_axi_awvalid,
		output wire  ash_axi_awready,
		input wire [C_Ash_AXI_DATA_WIDTH-1 : 0] ash_axi_wdata,
		input wire [(C_Ash_AXI_DATA_WIDTH/8)-1 : 0] ash_axi_wstrb,
		input wire  ash_axi_wvalid,
		output wire  ash_axi_wready,
		output wire [1 : 0] ash_axi_bresp,
		output wire  ash_axi_bvalid,
		input wire  ash_axi_bready,
		input wire [C_Ash_AXI_ADDR_WIDTH-1 : 0] ash_axi_araddr,
		input wire [2 : 0] ash_axi_arprot,
		input wire  ash_axi_arvalid,
		output wire  ash_axi_arready,
		output wire [C_Ash_AXI_DATA_WIDTH-1 : 0] ash_axi_rdata,
		output wire [1 : 0] ash_axi_rresp,
		output wire  ash_axi_rvalid,
		input wire  ash_axi_rready
	);
// Instantiation of Axi Bus Interface Ash_AXI
	gpio_control_v1_0_Ash_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_Ash_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_Ash_AXI_ADDR_WIDTH),
		.LED_WIDTH(LED_WIDTH),
		.SWITCH_WIDTH(SWITCH_WIDTH)
	) gpio_control_v1_0_Ash_AXI_inst (
		.S_AXI_ACLK(ash_axi_aclk),
		.S_AXI_ARESETN(ash_axi_aresetn),
		.S_AXI_AWADDR(ash_axi_awaddr),
		.S_AXI_AWPROT(ash_axi_awprot),
		.S_AXI_AWVALID(ash_axi_awvalid),
		.S_AXI_AWREADY(ash_axi_awready),
		.S_AXI_WDATA(ash_axi_wdata),
		.S_AXI_WSTRB(ash_axi_wstrb),
		.S_AXI_WVALID(ash_axi_wvalid),
		.S_AXI_WREADY(ash_axi_wready),
		.S_AXI_BRESP(ash_axi_bresp),
		.S_AXI_BVALID(ash_axi_bvalid),
		.S_AXI_BREADY(ash_axi_bready),
		.S_AXI_ARADDR(ash_axi_araddr),
		.S_AXI_ARPROT(ash_axi_arprot),
		.S_AXI_ARVALID(ash_axi_arvalid),
		.S_AXI_ARREADY(ash_axi_arready),
		.S_AXI_RDATA(ash_axi_rdata),
		.S_AXI_RRESP(ash_axi_rresp),
		.S_AXI_RVALID(ash_axi_rvalid),
		.S_AXI_RREADY(ash_axi_rready),
		.leds(leds),
		.switches(switches)
	);

	// Add user logic here

	// User logic ends

	endmodule
