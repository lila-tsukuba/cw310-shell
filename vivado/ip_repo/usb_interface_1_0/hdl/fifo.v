//
//    Copyright (C) 2026 University of Tsukuba
//    
//    File:          /vivado/ip_repo/usb_interface_1_0/hdl/fifo.v
//    Project:       cw310-shell
//    Author:        Takuya Kojima in University of Tsukuba (tkojima@lila.cs.tsukuba.ac.jp)
//    Created Date:  20-10-2026 10:29:30
//    Last Modified: 20-10-2026 10:29:31
//


`include "def.v"

module fifo # (
	parameter DATA_WIDTH = 32,
	parameter DEPTH = 16,
	parameter LOG2DEPTH = 4
) (
	input clk,
	input reset_n,
	input i_flush,
	// input channel
	input [DATA_WIDTH-1:0] i_data,
	input i_write_enable,
	output o_full,

	// output channel
	output [DATA_WIDTH-1:0] o_data,
	input i_read_enable,
	output o_empty,
	output o_almost_empty
);

	reg [DATA_WIDTH-1:0] ram [0:DEPTH-1];
	reg [LOG2DEPTH-1:0] r_read_addr, r_write_addr;
	reg [LOG2DEPTH:0] r_count;

	// control signals
	wire w_enqueue, w_dequeue;
	assign w_dequeue = i_read_enable & !o_empty;
	assign w_enqueue = i_write_enable & (!o_full | i_read_enable);


	// write address control
	always @(posedge clk or negedge reset_n) begin
		if (!reset_n) begin
			r_write_addr <= 0;
		end else begin
			if (i_flush) begin
				r_write_addr <= 0;
			end else if (w_enqueue) begin
				if (r_write_addr == DEPTH-1) begin
					r_write_addr <= 0;
				end else begin
					r_write_addr <= r_write_addr + 1;
				end
			end
		end
	end

	// write control
	integer  i;
	always @(posedge clk or negedge reset_n) begin
		if (!reset_n) begin
			for (i = 0; i < DEPTH; i = i + 1) begin
				ram[i] <= 0;
			end
		end else if (w_enqueue) begin
			ram[r_write_addr] <= i_data;
		end
	end

	// read address control
	always @(posedge clk or negedge reset_n) begin
		if (!reset_n) begin
			r_read_addr <= 0;
		end else begin
			if (i_flush) begin
				r_read_addr <= 0;
			end else if (w_dequeue) begin
				if (r_read_addr == DEPTH-1) begin
					r_read_addr <= 0;
				end else begin
					r_read_addr <= r_read_addr + 1;
				end
			end
		end
	end

	// data count control
	always @(posedge clk or negedge reset_n) begin
		if (!reset_n) begin
			r_count <= 0;
		end else begin
			if (i_flush) begin
				r_count <= 0;
			end else begin
				if (!o_full & i_write_enable & !w_dequeue) begin
					// only write, i.e, + 1
					r_count <= r_count + 1;
				end else if (w_dequeue & !i_write_enable) begin
					// only read, i.e, - 1
					r_count <= r_count - 1;
				end
				// other cases, keep the current value
			end
		end
	end

	// status output and read data
	assign o_full = (r_count == DEPTH);
	assign o_empty = (r_count == 0);
	assign o_almost_empty = (r_count <= 1);
	assign o_data = ~o_empty ? ram[r_read_addr] : 0;




endmodule