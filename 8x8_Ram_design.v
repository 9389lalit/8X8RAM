// Single Port RAM module design

module single_port_ram(
  input [7:0] data, //input data
  input [2:0] addr, //address
  input we, //write enable
  input clk, //clk
  output [7:0] q //output data
);
  reg [7:0] ram [0:7]; //8*8 bit ram
  reg [2:0] addr_reg; //address register

 // using behaviroul modelling for the design module
  always @ (posedge clk)
    begin
    // writing the data
      if(we)
        ram[addr] <= data;
      else
        addr_reg <= addr; 
    end
 //assign the data at a particular address
  assign q = ram[addr_reg];
  
endmodule
