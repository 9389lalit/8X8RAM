# 8X8RAM
It's a digital circuit of 8X8 RAM implemented on proteus professional software. The circuit is working properly and working properly with read and write operations.

# 1 bit Logic of Ram circuit
we have here 3 input pins 1. i/p 2. select 3. read/write and one output and a SR flipflop.
through this circuit we are creating the logic of the RAM.

![Algo for 1bit Ram unit](https://github.com/9389lalit/8X8RAM/assets/99964550/3f0a1bad-6005-4caf-8a58-5ff9e11cdc83)

# Decoder circuit
As we want to implement the 8X8 RAM so we want 8 select lines for that so for the 8 select lines we are using 3X8 Decoder.As we have the 3 i/p
so we will get 000 to 111 8 select lines to select any 1 Row to implement the read/write operation.

![image](https://github.com/9389lalit/8X8RAM/assets/99964550/ec96ae30-6480-404f-84ba-2d8da1b96a6e)

# output
To show the output we are using here 8 BCD 7 segment displays 

![Screenshot_20230611_124456](https://github.com/9389lalit/8X8RAM/assets/99964550/89402e3e-5620-4f0d-8645-93d45380bb6c)

# circuit Diagram

The whole circuit of the 8X8 RAM looks like.
There are  64 blocks of 1 bit logic circuit

![image](https://github.com/9389lalit/8X8RAM/assets/99964550/8cddd620-e118-4b05-ba4c-665bd50f518d)







To use this circuit just download and use it on proteous 8.13 and above versions and to read the value use the Read/Write=1 and for the write use Read/Write =0.


