module tb();
  reg [3:0] A;
  reg [3:0] B;
  reg [1:0] Op;
  wire [3:0] S;

  alu a1(A, B, Op, S);
  integer i = 0;
  initial 
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(0,a1);
      A = 4'b1010; B = 4'b0101; Op = 2'b00;
      for(int i=0; i < 4; i = i + 1) begin
        Op = i;
        #1;
      end
      #10;
      $finish;
    end
endmodule