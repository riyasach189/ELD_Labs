#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.226.142:50138]
source C:/Users/Riya_Sachdeva/Desktop/ELD_Lab/Lab9_16_FFT/Lab9_16_FFT.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78190A"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78190A"} -index 0
loadhw -hw C:/Users/Riya_Sachdeva/Desktop/ELD_Lab/Lab9_16_FFT/Lab9_16_FFT.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78190A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78190A"} -index 0
dow C:/Users/Riya_Sachdeva/Desktop/ELD_Lab/Lab9_16_FFT/Lab9_16_FFT.sdk/Lab9_16_FFT/Debug/Lab9_16_FFT.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78190A"} -index 0
con
