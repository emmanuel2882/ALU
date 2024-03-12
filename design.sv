module alu(A,B,Op,S);
  input [3:0] A;
  input [3:0] B;
  input [1:0] Op;
  output reg signed [3:0] S;

always_comb
begin
  case(Op)
    2'b00: S = A + B; // Suma
    2'b01: S = A - B; // Resta
    2'b10: S = A & B; // AND
    2'b11: S = A | B; // OR
    default: S = 4'bxxxx; // Valor por defecto para opcode no válido
  endcase
end

endmodule