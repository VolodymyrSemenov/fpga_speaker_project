
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:082	
612.8672	
200.816Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/utils_1/imports/synth_1/UltrasonicSpeaker.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/utils_1/imports/synth_1/UltrasonicSpeaker.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
l
Command: %s
53*	vivadotcl2;
9synth_design -top UltrasonicSpeaker -part xc7z010clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z010Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z010Z17-349h px� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z010clg400-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
L
#Helper process launched with PID %s4824*oasys2
620Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1478.434 ; gain = 449.832
h px� 
�
Uactual for formal port '%s' is neither a static name nor a globally static expression5370*oasys2
r_data2~
zC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/new/UltrasonicSpeaker.vhd2
548@Z8-9112h px� 
�
Uactual for formal port '%s' is neither a static name nor a globally static expression5370*oasys2
l_data2~
zC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/new/UltrasonicSpeaker.vhd2
558@Z8-9112h px� 
�
synthesizing module '%s'638*oasys2
UltrasonicSpeaker2~
zC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/new/UltrasonicSpeaker.vhd2
258@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
ssm2603_i2s2�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/imports/Downloads/ssm2603_i2s.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ssm2603_i2s2
02
12�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/imports/Downloads/ssm2603_i2s.vhd2
198@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2
combined_clock_gen2
 2�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.runs/synth_1/.Xil/Vivado-12520-SIEMENS/realtime/combined_clock_gen_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
combined_clock_gen2
 2
02
12�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.runs/synth_1/.Xil/Vivado-12520-SIEMENS/realtime/combined_clock_gen_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UltrasonicSpeaker2
02
12~
zC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/new/UltrasonicSpeaker.vhd2
258@Z8-256h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ready2
ssm2603_i2s2�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/imports/Downloads/ssm2603_i2s.vhd2
168@Z8-3848h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
ready2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[23]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[22]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[21]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[20]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[19]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[18]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[17]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[16]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[15]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[14]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[13]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[12]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[11]2
ssm2603_i2sZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2

l_data[10]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[9]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[8]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[7]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[6]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[5]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[4]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[3]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[2]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[1]2
ssm2603_i2sZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	l_data[0]2
ssm2603_i2sZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1590.340 ; gain = 561.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1590.340 ; gain = 561.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1590.340 ; gain = 561.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1590.3402
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen/combined_clock_gen_in_context.xdc2
clk_gen	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen/combined_clock_gen_in_context.xdc2
clk_gen	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
clk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
18@Z18-619h px�
�
No pins matched '%s'.
508*	planAhead2
clk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
28@Z12-508h px�
�
No pins matched '%s'.
508*	planAhead2
mclk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
28@Z12-508h px�
�
Finished Parsing XDC File [%s]
178*designutils2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2v
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2%
#.Xil/UltrasonicSpeaker_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2%
#.Xil/UltrasonicSpeaker_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1675.3982
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1675.3982
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z010clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2
current_note_reg_repZ8-6040h px� 
�
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2
current_note_reg_repZ8-6040h px� 
�
!inferring latch for variable '%s'327*oasys2
rx_data_reg2�
�C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/sources_1/imports/Downloads/ssm2603_i2s.vhd2
508@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   27 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               27 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2
current_note_reg_repZ8-6040h px� 
�
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2
current_note_reg_repZ8-6040h px� 
o
+design %s has port %s driven by constant %s3447*oasys2
UltrasonicSpeaker2
mute2
1Z8-3917h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[63]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[62]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[61]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[60]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[59]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[58]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[57]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[56]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[55]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[54]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[53]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[52]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[51]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[50]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[49]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[48]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[47]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[46]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[45]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[44]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[43]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[42]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[41]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[40]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[39]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[38]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[37]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[36]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[35]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[34]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[33]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[32]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[31]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[30]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[29]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[28]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[27]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[26]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[25]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[24]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[23]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[22]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[21]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[20]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[19]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[18]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[17]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[16]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[15]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[14]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[13]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[12]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[11]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[10]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[9]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[8]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[7]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[6]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[5]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[4]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[3]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[2]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[1]2
UltrasonicSpeakerZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mic_codec/rx_data_reg[0]2
UltrasonicSpeakerZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
]
%s*synth2E
C+------------------+------------+---------------+----------------+
h px� 
^
%s*synth2F
D|Module Name       | RTL Object | Depth x Width | Implemented As | 
h px� 
]
%s*synth2E
C+------------------+------------+---------------+----------------+
h px� 
^
%s*synth2F
D|UltrasonicSpeaker | notes[0]   | 512x18        | LUT            | 
h px� 
^
%s*synth2F
D|UltrasonicSpeaker | notes[0]   | 512x18        | LUT            | 
h px� 
^
%s*synth2F
D+------------------+------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
<
redefining clock '%s'565*oasys2
clkZ8-565h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
B
%s
*synth2*
(+------+-------------------+----------+
h p
x
� 
B
%s
*synth2*
(|      |BlackBox name      |Instances |
h p
x
� 
B
%s
*synth2*
(+------+-------------------+----------+
h p
x
� 
B
%s
*synth2*
(|1     |combined_clock_gen |         1|
h p
x
� 
B
%s
*synth2*
(+------+-------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|      |Cell               |Count |
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|1     |combined_clock_gen |     1|
h px� 
>
%s*synth2&
$|2     |CARRY4             |    35|
h px� 
>
%s*synth2&
$|3     |LUT1               |     7|
h px� 
>
%s*synth2&
$|4     |LUT2               |    26|
h px� 
>
%s*synth2&
$|5     |LUT3               |    32|
h px� 
>
%s*synth2&
$|6     |LUT4               |    89|
h px� 
>
%s*synth2&
$|7     |LUT5               |    44|
h px� 
>
%s*synth2&
$|8     |LUT6               |   134|
h px� 
>
%s*synth2&
$|9     |MUXF7              |     8|
h px� 
>
%s*synth2&
$|10    |FDRE               |   101|
h px� 
>
%s*synth2&
$|11    |IBUF               |     1|
h px� 
>
%s*synth2&
$|12    |OBUF               |     7|
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1675.398 ; gain = 646.797
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 72 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:36 . Memory (MB): peak = 1675.398 ; gain = 561.738
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1675.398 ; gain = 646.797
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1675.3982
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
43Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1675.3982
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1acd8956Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282
1042
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:442

00:00:452

1675.3982

1044.914Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1675.3982
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2v
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.runs/synth_1/UltrasonicSpeaker.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2m
kreport_utilization -file UltrasonicSpeaker_utilization_synth.rpt -pb UltrasonicSpeaker_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Dec  2 00:21:44 2024Z17-206h px� 


End Record