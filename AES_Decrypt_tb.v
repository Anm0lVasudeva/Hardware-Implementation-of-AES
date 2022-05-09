module AES_Decrypt_tb;
reg [127:0] in1;
wire [127:0] out1;
reg [127:0] key1;

reg [127:0] in2;
wire [127:0] out2;
reg [191:0] key2;

reg [127:0] in3;
wire [127:0] out3;
reg [255:0] key3;

AES_Decrypt a(in1,key1,out1);
//AES_Encrypt #(192,12,6) b(in2,key2,out2);
//AES_Encrypt #(256,14,8) c(in3,key3,out3);


initial begin
$monitor("in128= %h, key128= %h ,out128= %h",in1,key1,out1);
in1=128'h69c4e0d86a7b0430d8cdb78070b4c55a;
key1=128'h000102030405060708090a0b0c0d0e0f;
#10;
//$monitor("in192= %h, key192= %h ,out192= %h",in2,key2,out2);
//in2=128'h_00112233_44556677_8899aabb_ccddeeff;
//key2=192'h_00010203_04050607_08090a0b_0c0d0e0f_10111213_14151617;
//#10;
//$monitor("in256= %h, key256= %h ,out256= %h",in3,key3,out3);
//in3=128'h_00112233_44556677_8899aabb_ccddeeff;
//key3=256'h_00010203_04050607_08090a0b_0c0d0e0f_10111213_14151617_18191a1b_1c1d1e1f;
//#10;
end

endmodule