
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:082	
612.7852	
200.043Z17-268h px� 
k
Command: %s
53*	vivadotcl2:
8link_design -top UltrasonicSpeaker -part xc7z010clg400-1Z4-113h px� 
U
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_1Z12-437h px� 
X
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_1Z12-434h px� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z010clg400-1Z21-9227h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.dcp2	
clk_genZ1-454h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1043.4962
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
44Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2024.1Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen_board.xdc2
clk_gen/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen_board.xdc2
clk_gen/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc2
clk_gen/inst	8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc2
548@Z38-35h px� 
�
Deriving generated clocks
2*timing2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc2
548@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
get_clocks: 2

00:00:072

00:00:082

1733.5512	
570.129Z17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc2
clk_gen/inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
clk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
18@Z18-619h px� 
�
No pins matched '%s'.
508*	planAhead2
clk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
28@Z12-508h px� 
�
No pins matched '%s'.
508*	planAhead2
mclk2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
28@Z12-508h px� 
�
&%s:No valid object(s) found for '%s'.
2779*	planAhead2
create_generated_clock2
-source [get_pins clk]2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc2
28@Z12-4739h px�
�
Finished Parsing XDC File [%s]
178*designutils2x
tC:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1733.7852
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
112
32
12
0Z4-41h px� 
K
%s completed successfully
29*	vivadotcl2
link_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
link_design: 2

00:00:142

00:00:152

1733.7852

1103.984Z17-268h px� 


End Record