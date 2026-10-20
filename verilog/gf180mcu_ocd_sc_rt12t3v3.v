//--------------------------------------------------
// Verilog library of standard cells for the
// Open Circuit Design gf180mcu_ocd_sc_rt12t3v3
// library.
//--------------------------------------------------

//--------------------------------------------------
// 2-input AND
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__and2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A & B;

endmodule

//--------------------------------------------------
// Antenna diode
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__ant(
	input VDD,
	input VSS,

	input A
);

endmodule

//--------------------------------------------------
// AND-OR-INVERT (2 and 1 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__aoi21_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = ~((A & B) | C);

endmodule

//--------------------------------------------------
// AND-OR-INVERT (2 and 2 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__aoi22_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B) | (C & D));

endmodule

//--------------------------------------------------
// AND-OR-INVERT (3 and 1 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__aoi31_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B & C) | D);

endmodule

//--------------------------------------------------
// Buffer (strength 1)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__buf_1 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Buffer (strength 2)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__buf_2 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Buffer (strength 4)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__buf_4 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Buffer (strength 8)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__buf_8 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Buffer (strength 16)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__buf_16 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Clock Buffer (strength 1)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__clkbuf_1 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Clock Buffer (strength 2)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__clkbuf_2 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Clock Buffer (strength 4)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__clkbuf_4 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Clock Buffer (strength 8)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__clkbuf_8 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Clock Buffer (strength 16)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__clkbuf_16 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

//--------------------------------------------------
// Decap filler cell (size 4)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__decap_4 (
	input VDD,
	input VSS
);

endmodule

//--------------------------------------------------
// Flop-flop (positive clock)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__dff_1 (
	input VDD,
	input VSS,
	
	input CLK,
	input D,
	output Q
);

reg state;
always @(posedge CLK) state <= D;
assign Q = state;

endmodule

//--------------------------------------------------
// Flop-flop (negative clock)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__dffn_1 (
	input VDD,
	input VSS,
	
	input CLKN,
	input D,
	output Q
);

reg state;
always @(negedge CLKN) state <= D;
assign Q = state;

endmodule

//--------------------------------------------------
// Flop-flop (positive clock, set, and reset)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__dffsr_1 (
	input VDD,
	input VSS,

	input CLK,
	input D,
	input RN,
	input SN,
	output Q
);

reg state;
wire sr;

assign sr = ~(RN & SN);

always @(posedge CLK or posedge sr) begin
	if (sr == 1'b1) begin
	if (RN == 1'b0) begin
		state <= 1'b0;
	end else if (SN == 1'b0) begin
		state <= 1'b1;
	end
	end else begin
		state <= D;
	end
end

assign Q = state;

endmodule

//--------------------------------------------------
// Latch (positive enable)
//--------------------------------------------------

module gf180mcu_as_sc_mcu7t3v3__dlat_1 (
	input VDD,
	input VSS,

	input CLK,
	input D,
	output Q
);

reg state;
always @(CLK, D) if(CLK) state <= D;
assign Q = state;

endmodule

//--------------------------------------------------
// Latch (negative enable)
//--------------------------------------------------

module gf180mcu_as_sc_mcu7t3v3__dlatn_1 (
	input VDD,
	input VSS,

	input CLKN,
	input D,
	output Q
);

reg state;
always @(CLKN, D) if(!CLKN) state <= D;
assign Q = state;

endmodule

//--------------------------------------------------
// Filler (width 1)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__fill_1 (
	input VDD,
	input VSS
);

endmodule

//--------------------------------------------------
// Filler (width 2)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__fill_2 (
	input VDD,
	input VSS
);

endmodule

//--------------------------------------------------
// Filler (width 4)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__fill_4 (
	input VDD,
	input VSS
);

endmodule

//--------------------------------------------------
// Inverter (strength 1)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__inv_1 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

//--------------------------------------------------
// Inverter (strength 2)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__inv_2 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

//--------------------------------------------------
// Inverter (strength 4)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__inv_4 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

//--------------------------------------------------
// Inverter (strength 8)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__inv_8 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

//--------------------------------------------------
// Inverter (strength 16)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__inv_16 (
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

//--------------------------------------------------
// Majority-3
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__maj3_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = (A & B) | (A & C) | (B & C);

endmodule

//--------------------------------------------------
// 2-input Multiplexer
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__mux2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input S,
	output Y
);

assign Y = (S&B) | ((!S)&A);

endmodule

//--------------------------------------------------
// 2-input NAND
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__nand2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = !(A & B);

endmodule

//--------------------------------------------------
// 2-input NOR
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__nor2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = !(A | B);

endmodule

//--------------------------------------------------
// OR-AND-INVERT (2 and 1 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__oai21_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = ~((A | B) & C);

endmodule

//--------------------------------------------------
// OR-AND-INVERT (2 and 2 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__oai22_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A | B) & (C | D));

endmodule

//--------------------------------------------------
// OR-AND-INVERT (3 and 1 inputs)
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__oai31_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A | B | C) & D);

endmodule

//--------------------------------------------------
// 2-input OR
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__or2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A | B;

endmodule

//--------------------------------------------------
// Tristate buffer
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__tbuf_1 (
	input VDD,
	input VSS,

	input A,
	input EN,
	output Y
);

assign Y = (EN == 1'b1) ? A : 1'bz;

endmodule

//--------------------------------------------------
// Tie-high output
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__tieh (
	input VDD,
	input VSS,

	output Y
);

assign Y = 1'b1;

endmodule

//--------------------------------------------------
// Tie-low output
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__tiel (
	input VDD,
	input VSS,

	output Y
);

assign Y = 1'b0;

endmodule

//--------------------------------------------------
// Tristate inverter
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__tinv_1 (
	input VDD,
	input VSS,

	input A,
	input EN,
	output Y
);

assign Y = (EN == 1'b1) ? ~A : 1'bz;

endmodule

//--------------------------------------------------
// Exclusive NOR
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__xnor2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A == B;

endmodule

//--------------------------------------------------
// Exclusive OR
//--------------------------------------------------

module gf180mcu_ocd_sc_rt12t3v3__xor2_1 (
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A != B;

endmodule

//--------------------------------------------------
