
SuzuhaOS

compile :

1,
edit configure and choose one CPU uncommenting line, fe :

device="mkl25z4"
#device="stm32f1"
#device="tm4c123"

mkl25z4 cpu is choosen (cortex m0)

2, run config scriptin shell
# ./configure

which create Makefile based on config options and Makefile_

3, compile it :
# make all -B	

or just

# make


4, flashing
compilation produce file bin/main.bin
which can be flashed with following scripts

./kl25z4_write
./lm4f_write
./stm32f1x_write

you will need in ~/bin/ flashing programs, such stlink or lm4flash, 
see https://github.com/texane/stlink and https://github.com/utzig/lm4tools/tree/master/lm4flash
