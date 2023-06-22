

// Single Port RAM testbench

module single_port_ram_tb;
  reg [7:0] data; //input data
  reg [2:0] addr; //address
  reg we; //write enable
  reg clk; //clk
  wire [7:0] q; //output data 	
  
  single_port_ram spr1(
    .data(data),
    .addr(addr),
    .we(we),
    .clk(clk),
    .q(q)
  );
  
  initial
    begin
      clk=1'b1;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
    // writing the data
      data = 8'h01;
      addr = 3'd0;
      we = 1'b1;
      #10;
           
	  data = 8'h02;
      addr = 3'd1;     
      #10;
      
      data = 8'h03;
      addr = 3'd2;     
      #10;
      
       data = 8'h04;
      addr = 3'd3;
      #10;
   
      data = 8'h05;
      addr = 3'd4;
      #10;
      
      data = 8'h06;
      addr = 3'd5;
      #10;
      
        data = 8'h08;
      addr = 3'd6;
      #10;
      
         data = 8'h10;
      addr = 3'd7;
      #10;
      
      // reading the data
      we=1'b0;
      
       #10
       
      addr = 3'd0;
      
      #10;
       
      addr = 3'd1;     
      #10;
     
      addr = 3'd2;     
      #10;
     
      addr = 3'd3;
      #10;
      
      addr = 3'd4;
      #10;
      
      addr = 3'd5;
      #10;
      
      addr = 3'd6;
      #10;
      
      addr = 3'd7;
      #10;
      
      // writing the data
      
      data = 8'h04;
      addr = 3'd1;
      we = 1'b1;
      #10;
         data = 8'h07;
      addr = 3'd2;
      #10
         data = 8'h08;
      addr = 3'd4;
      #10
         data = 8'h10;
      addr = 3'd7;
      #10
         data = 8'h01;
      addr = 3'd5;
      #10
      
      // reading the data
      we = 1'b0;
      #10;
      addr = 3'd5;
      #10;
      addr = 3'd7;
      #10;
      addr = 3'd4;
      #10;
      addr = 3'd1;
      #10;
    end
  
endmodule
