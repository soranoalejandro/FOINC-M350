
O9053

G91G00X#0Y#1Z#2A#3B#4C#5 F#10;XYAB���ٽ�����Ŀ���еλ��
M99

O9081
IF #13>0 GOTO1
#13=1
(ѭ������)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
G90G01Z#11;Z�������ٶ������׵�λ��
G90G00Z#10;Z����̧����Rλ��
#13=#13-1;ѭ�������ݼ�
END13
G90G00Z#12;Z����̧�����˵�λ��
M99

O9082
IF #13>0 GOTO1
#13=1
(ѭ������)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
G90G01Z#11;Z�������ٶ������׵�λ��
G04P#14
G90G00Z#10;Z����̧����Rλ��
#13=#13-1;ѭ�������ݼ�
END13
G90G00Z#12;Z����̧�����˵�λ��
M99
  
O9073
IF #13>0 GOTO5
#13=1
(ѭ������)
N5 WHILE#13>0DO13
#9=#10
G91G00X#0Y#1A#3B#4C#5;XY���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
#21 =0-#15  //ÿ�ν�����ȴ�����
N6#9=#9+#21;����������λ��
#20=#9+#724;������׻���λ��
IF #9>#11 GOTO7
#9=#11
#20=#10
N7G90G01Z#9;Z�������ٶ�������
G90G00Z#20;Z�������׼�Ъ����
IF #9==#11 GOTO8
GOTO6
N8#13=#13-1;ѭ�������ݼ�
G04P#14
END13
G90G00Z#12;Z����̧�����˵�λ��
M99

O9083
IF #13>0 GOTO5
#13=1
(ѭ������)
N5 WHILE#13>0DO13
#9=#10 //R��λ��
G91G00X#0Y#1A#3B#4C#5;XY���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
#21 =0-#15  //ÿ�ν�����ȴ�����

N6#9=#9+#21;����������λ��
#20=#9+#724;������׻���λ��
IF #9>#11 GOTO7
#9=#11
#20=#10
N7G90G01Z#9;Z�������ٶ�������
G90G00Z#10;Z�������R��
G90G00Z#20
IF #9==#11 GOTO8
GOTO6
N8#13=#13-1;ѭ�������ݼ�
G04P#14
END13
G90G00Z#12;Z����̧�����˵�λ��
M99

O9074
#1501=0;��������������
IF #13>0 GOTO1
#13=1
(ѭ������)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
G90G01Z#11;�������ٶ����׵�λ��,�ŷ����ᷴת
G90G01Z#10;�������ٶ�̧����R��,�ŷ�������ת
#13=#13-1;ѭ�������ݼ�
END13
G90G00Z#12;Z����̧�����˵�λ��
M99

O9084
#1501=1;��������������
IF #13>0 GOTO1
#13=1
(ѭ������)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB���ٽ�������λ��
G90G00Z#10;Z���ٽ�����R��
G90G01Z#11;�������ٶ����׵�λ��,�ŷ�������ת
G90G01Z#10;�������ٶ�̧����R��,�ŷ����ᷴת
#13=#13-1;ѭ�������ݼ�
END13
G90G00Z#12;Z����̧�����˵�λ��
M99

O9028
#50=#0
#51=#1
#52=#2
#53=#3
#54=#4
#55=#5
G90G00X#0Y#1Z#2A#3B#4C#5
#13=0
#14=0
#15=0
#[10+#943] =#625
#[10+#944] =#626
G53X#622Y#623Z#624A#13B#14C#15
M99

O9029
G90G00X#50Y#51Z#52A#53B#54C#55
G90G00X#0Y#1Z#2A#3B#4C#5
M99

O500
IF #578<1 GOTO1
IF #578<7 GOTO2
#[800+#578*5]=#1
#[801+#578*5]=#2
#[802+#578*5]=#3
#[803+#578*5]=#4
GOTO3
N1#[800+#578*5]=#880-#1
#[801+#578*5]=#881-#2
#[802+#578*5]=#882-#3
#[803+#578*5]=#883-#4
GOTO3
N2#[800+#578*5]=#885-#1
#[801+#578*5]=#886-#2
#[802+#578*5]=#887-#3
#[803+#578*5]=#888-#4
N3
M99

O501(����Ѱ��)
IF #[1046+#1*3]==0 GOTO30;�����㹦��δʹ��,����

#1618=0 //Ѱ�㿪ʼ��־
(��ʼ������̽�����)
#2=0
#3=0
#4=0
#5=0
#6=0
#13=0
#14=0
#15=0


#20=#618 
IF #20>0 GOTO27
#20=#500

N27

#21=0;̽��ѭ������
#30=0;̽���������λ�ó�ʼ��
#22 = #[607+#1]
#23=0

#1503 = 1(��������ź�...)
#[2+#1]=10000*#[612+#1]-5000;ȷ��̽�ⷽ�򼰾���


N4
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#22 P#[1045+#1*3] L#[1047+#1*3] K#23 Q0;����̽��,��λ̽�⿪��

IF #[1920+#1]<=2 GOTO1;̽�⵽����ź�תN1
#[2+#1]=-#[2+#1];��������λ,̽�ⷴ��
#1503 = 1(��������λ����Զ��...)
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#[607+#1] P#[1045+#1*3] L#[1047+#1*3] K0 Q0;��������λ,�������̽��,��λ̽��ر�

N1
#24 = 0
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
IF #24 <4 GOTO10
#24 = 1
GOTO11

N10
#24 = 0
N11
IF #24 == #[1910+#1] GOTO2;ͣ��������ź�������תN2
#1503 = 1(����������������Զ��...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15 F#20 P#[1045+#1*3] L#[1047+#1*3] K0 Q1;�������ź�������,�������̽��
N2
#1503 = 1(ͣ�����������ȥ����Զ��...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15  F#20 P#[1045+#1*3] L[1-#[1047+#1*3]] K0 Q1;�������̽��,��ת��Ч��ƽ

#20=#20/2
#22 =#20
#23 = 0

//#30=#30+#[1925+#1];����̽����
#[2100+#21]=#[1925+#1]; ��¼ÿ�ο��ؾ���
#21=#21+1

IF #21<#606 GOTO4

//�ж�ƫ��

IF #617<=0 GOTO25 //ֱ�Ӹ�ֵ���ж�
#2105=10+#1         //��ʼ����������ֵ
IF #2105<=#617 GOTO25
#[1515+#1]=0
#1503 = 1(��㿪��������,����ʧ��!)
G04 P2000
GOTO30

N25
//#[880+#1]=#[880+#1]-#30/#21;��������������
#[880+#1]=#[735+#1]
#[1515+#1]=1;ˢ�¸�������־

#1618=1 //Ѱ�㿪ʼ��־
#25=#655 //��������λʹ�ܲ���
#655 =0(ȡ������λ)
#1503 = 1(�ص�����ο���λ��...)
IF #1!=0 GOTO20
G53X#622 F500
GOTO30
N20

IF #1!=1 GOTO21
G53Y#623 F500
GOTO30
N21

IF #1!=2 GOTO22
G53Z#624 F500
GOTO30
N22

IF #1!=3 GOTO23

IF#943==3 GOTO51
IF#943==4 GOTO52
IF#943==5 GOTO53
N51
G53A#625 F500
GOTO30

N52
G53B#625 F500
GOTO30

N53
G53C#625 F500
GOTO30

N23

IF #1!=4 GOTO24

IF#944==3 GOTO61
IF#944==4 GOTO62
IF#944==5 GOTO63
N61
G53A#626 F500
GOTO30
N62
G53B#626 F500
GOTO30
N63
G53C#626 F500
GOTO30
N24

N30

#655 =#25(�ָ�����λ����)
M99

O502(�Ե�Ѱ��)


#1=2;�������





N13
(��������־�ж�)
IF #720 == 0 GOTO20;

IF [#1515+#1516+#1517]>=3 GOTO20;
#1503 = 1(X.Y,Z���еδȫ������!)
G04 P2000
GOTO3 ;����


N20
IF #1300!=0 GOTO21;
#1503 = 1(��ǰ��λ�յ����ܶԵ�!)
G04 P2000
GOTO3 ;����


N21
IF #1300>[#1301+20] GOTO4; ���������ʵ��


IF #1502==0 GOTO6;
IF #1502==1 GOTO7;
IF #1502==2 GOTO8;

N6
IF #1078!=0 GOTO36;��������Ե��˿�δ����,����
#1503 = 1(�����Ե��ź�����˿�δ����!)
G04 P2000
GOTO3 ;����
N36

IF #1079!=0 GOTO46;����Ե�����δʹ��,����
#1503 = 1(�����Ե��ź�����δʹ��!)
G04 P2000
GOTO3 ;����
N46

IF #628==0 GOTO3;��������Ե�����δʹ��,����
IF #1300>#1301 GOTO30
//#[1430 + [#1300-1]] = 0;��ǰ����Zƫ������0
GOTO31
N30
//#[1472] = 0;���⵶��Zƫ������Ϊ0
N31
#837 = 0; ��ǰ�ⲿƫ������Ϊ0
#1503 = 1(�����Ե���ʼ...)
GOTO4

N7 
IF #630==0 GOTO3;����̶��Ե�����δʹ��,����
(#7 = #882 ;��¼��ǰ��������Ļ�еλ��)
#7 = #[807+[#578-1]*5] ;��¼Z�������Ļ�еλ��
#1503 = 1(�״ι̶��Ե���ʼ...)
GOTO9

N8  
IF #1075!=0 GOTO38;����Ե��˿�δ����,����
#1503 = 1(�̶��Ե��ź�����˿�δ����!)
G04 P2000
GOTO3 ;����
N38

IF #1076!=0 GOTO48;����Ե�����δʹ��,����
#1503 = 1(�̶��Ե��ź�����δʹ��!)
G04 P2000
GOTO3 ;����
N48

IF #630==0 GOTO3;����̶��Ե�����δʹ��,����
#1503 = 1(�̶��Ե���ʼ...)
GOTO9

N9
//�̶�λ�û���

#10 = #635
#11 = #636
IF #1302!=1 GOTO35; 	�๤��
#10 = #635+#[1390+#1300-1]
#11 = #636+#[1410+#1300-1]

N35
#13=0
#14=0
#15=0
#[10+#943] =#638
#[10+#944] =#639


#1503 = 1(�ƶ����̶��Ե���ʼλ��.�ٶ�:63�Ų���)
IF#637>=#882 GOTO5


G53X#10Y#11A#13B#14C#15
G53Z#637
GOTO4

N5 G53Z#637
G53X#10Y#11A#13B#14C#15

(��ʼ������̽�����)
N4 
#2=0
#3=0
#4=0
#5=0
#6=0

#20=#500;�����ٶ�
#21=0;̽��ѭ������
#30=0;̽���������λ�ó�ʼ��
#[2+#1]=-5000;ȷ��̽�ⷽ�򼰾���
#22 = #632

//��������˿�
IF #1502==0 GOTO26;
IF #1502==2 GOTO28;
N26
#26 = #1078 //�����Ե��˿�
#28 = #1080 //�����Ե�
GOTO29

N28
#26 = #1075 //�̶��Ե��˿�
#28 = #1077 //�̶��Ե���ƽ

N29
N1 
#1503 = 1(�Ե��ź�������...)
G91G31X#2Y#3Z#4A#5B#6 F#22 P#26 L#28 K0 Q1;�����Ե��ź� ������λ ����ֹͣ

#24 = 0
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
IF #24 <4 GOTO10
#24 = 1
GOTO11

N10
#24 = 0
N11
IF #24==#[1910+#1] GOTO2;ͣ���ڶԵ��ź�������תN2

GOTO22
N2
#1503 = 1(�����˳��Ե��ź�...)
G91G31X-#2Y-#3Z-#4A-#5B-#6 F#22 P#26 L[1-#28] K0 Q1;�����˳�̽��
N22
#20=#20/2
#22=#20
#30=#30+#[1925+#1];����̽����
#21=#21+1
(G91 G00 Z1)
IF #21<#631 GOTO1

#31 =  #30/#21  (�Ե��ǵĻ�е����)

IF #1502==0 GOTO16;
IF #1502==1 GOTO17;
IF #1502==2 GOTO18;

N16       ;�����Ե��ǻ�еλ���븡���Ե���� �Լ���ǰ����Zƫ�� �õ���������Ļ�е���겢���뵱ǰ����ϵ��üӹ�Zƽ��
#32 = #31 - #629
IF #1300>#1301 GOTO52
#[807+[#578-1]*5] = #32 - #[1430 + [#1300-1]]  //ʵ�ʵ�����ƫ��
GOTO53
N52
#[807+[#578-1]*5] = #32 - #[1473 + [#1300-#1301-1]]//���⵶����ƫ��
N53
#1508=1
GOTO19

N17       ;�״ι̶��Ե�,������������Ե��ǵĲ�ֵ���뵱ǰ����ϵZƫ��
#32 = #7-#31
#[807+[#578-1]*5] = #32 ;��ǰ����ϵZ

IF #1300>#1301 GOTO32
#[1430 + [#1300-1]] = #31 ;ˢ�µ�ǰ���ߵ�Zƫ��
GOTO33
N32
#[1473 + [#1300-#1301-1]] = #31;ˢ�µ�ǰ���⵶�ߵ�Zƫ��
N33
#1508 = 1;(�״ζԵ����)
GOTO19

N18       ;�����̶��Ե�,���Ե��ǵĻ�еλ�����뵱ǰ���ߺŵ�Zƫ����
#[1430 + [#1300-1]] = #31
IF #1300>#1301 GOTO34
GOTO19
N34
#[1473 + [#1300-#1301-1]] = #31;ˢ�µ�ǰ���⵶�ߵ�Zƫ��
N19

#1503 = 1(�Ե�����˾���.�ٶ�:63�Ų���)

G91G0Z#640

#1503 = 1(�Ե����!)

#1509 =1
N3
G04 P500
#1509 =0
M99




O503(˫Y)

IF #101==0 GOTO30;�˿ں�δ���� �˳�

#1618=0 //Ѱ�㿪ʼ��־
(��ʼ������̽�����)
#2=0
#3=0
#4=0
#5=0
#6=0
#13=0
#14=0
#15=0


#20=#618 
IF #20>0 GOTO27
#20=#500

N27

#21=0;̽��ѭ������
#30=0;̽���������λ�ó�ʼ��
#22 = #103  //Ѱ���ٶ�
#23=0

#1503 = 1(��������ź�...)
#[2+1]=10000*#104-5000;ȷ��̽�ⷽ�򼰾���


N4
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#22 P#101 L#102 K#23 Q0;����̽��,��λ̽�⿪��

IF #[1920+#1]<=2 GOTO1;̽�⵽����ź�תN1
#[2+#1]=-#[2+#1];��������λ,̽�ⷴ��
#1503 = 1(��������λ����Զ��...)
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#103 P#101 L#102 K0 Q0;��������λ,�������̽��,��λ̽��ر�

N1
#24 = 0
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
#24 = #24+ #[1520+#[1900+#1]-1]
IF #24 <4 GOTO10
#24 = 1
GOTO11

N10
#24 = 0
N11
IF #24 == #[1910+#1] GOTO2;ͣ��������ź�������תN2
#1503 = 1(����������������Զ��...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15 F#20 P#101 L#102 K0 Q1;�������ź�������,�������̽��
N2
#1503 = 1(ͣ�����������ȥ����Զ��...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15  F#20 P#101 L[1-#102] K0 Q1;�������̽��,��ת��Ч��ƽ

#20=#20/2
#22 =#20
#23 = 0

//#30=#30+#[1925+#1];����̽����
#[2100+#21]=#[1925+#1]; ��¼ÿ�ο��ؾ���
#21=#21+1

IF #21<#606 GOTO4

//�ж�ƫ��

IF #617<=0 GOTO25 //ֱ�Ӹ�ֵ���ж�
#2105=10+#1         //��ʼ����������ֵ
IF #2105<=#617 GOTO25
#[1515+#1]=0
#1503 = 1(��㿪��������,����ʧ��!)
G04 P2000
GOTO30

N25



#1618=1 //Ѱ�㿪ʼ��־
N30
M99




O20000(tool change program)

(Record the workpiece position before tool change)
#2 = #880
#3 = #881
#4 = #882
#5 = #883
#1514 = 1  // pause signal

; early exit conditions
IF #1300>[#1301+20] GOTO4 ; current tool > capacity + virtual
IF #1>[#1301+20] GOTO4 ; new tool > capacity + virtual
IF #1300==#1 GOTO4 ; new tool == current tool, exit
IF #1302==0 GOTO4 ; machine without tool magazine
IF #720 == 0 GOTO50 ; skip home point checking
IF [#1515+#1516+#1517]>=3 GOTO50 ; home point ok, continue
#1503 = 1(X, Y, Z axis are not fully zeroed!)
G04 P10
GOTO4 ; exit

; initial commands
N50
M151 ;Dust cover closed
M153 ;Tool magazine closed
M155 ;Tool locking

; select tool removal method
IF #1300>#1301 GOTO20 ; virtual tool remove
IF #1302==1 GOTO25 ; multiple processes removal
IF #1302==2 GOTO22 ; gantry straight row removal
IF #1302==3 GOTO23 ; fixed straight row removal
IF #1302==4 GOTO4 ; disc tool magazine
GOTO4 ; exit

; select tool loading method
N17
IF #1>#1301 GOTO30 ; virtual tool load
IF #1302==1 GOTO35 ; multiple processes
IF #1302==2 GOTO32 ; gantry straight row
IF #1302==3 GOTO33 ; fixed straight row
IF #1302==4 GOTO4 ; disc tool magazine
GOTO4 ; exit

(---------fixed straight row removal----------)
N23
#1503 = 1(Fixed straight tool change started!)
M306 ; dust cover closed detection
M05 ; turn off spindle
M300 ; wait spindle stop signal

#1503 = 1(tool change, Z upper position...)
G53 Z#1306 F#1312
#1503 = 1(tool change leading point Y...)
G53 Y#1309 F#1311
#1503 = 1(tool X coordinate...)
G53 X[#[1330+#1300-1]] F#1311
#1503 = 1(tool change, Z lower position for current tool...)
;G53 Z#1307 F#1312 ;
G53 Z[#[1370+#1300-1]] F#1312
#1503 = 1(tool Y coordinate...)
G53 Y[#[1350+#1300-1]] F#1313

M154 ; tool release
G04 P100
M301 ; wait tool release signal

#1503 = 1(tool change, Z upper position...)
G53 Z#1306 F#1312
#1503 = 1(target tool XY coordinates...)
G53 X[#[1330+#1-1]] Y[#[1350+#1-1]] F#1311 ;
#1503 = 1(tool change, Z lower position for new tool...)
;G53 Z#1307 F#1312 ;
G53 Z[#[1370+#1-1]] F#1312

#1503 = 1(tool lock)
M155 ;tool lock
G04 P200
M302 ;tool lock detection

#1503 = 1(tool change leading point Y...)
G53 Y#1309 F#1313
#1503 = 1(tool change, Z upper position...)
G53 Z#1306 F#1312
GOTO5 ; fixed straight tool change completed
(---------fixed straight row removal completed----------)


(--------Multi-process tool removal process---------)
N25
IF#1300 == 0 GOTO17;If the current tool = 0, only tool change action
IF #[1552+16-1]==0 GOTO45
M5
N45
G53 Z#1306 F#1312 ;The spindle is lifted to the upper position of tool change
M300 ;Spindle stop detection
M169
M171
M173
M175
M141
#1300 = 0 (empty tool)
IF #1!=0 GOTO51;(Only unload the tool and exit)
GOTO3
N51
IF #1!=0 GOTO17;Target tool change
(--------Multi-process tool removal completed--------)


(-----Gantry direct tool removal process-----)
N22
IF#1300 == 0 GOTO17;If the current tool = 0, only tool change action
#1503 = 1(Gantry direct tool change starts!)
M05  ; spindle off
M151 ; dust cover closed
M306 ; dust cover closed detection

#1503 = 1(Spindle lifted to the upper position for tool change, speed: parameter 812)
G53 Z#1306 F#1312 ;Spindle lifted to the upper position for tool change
#1503 = 1(Spindle moves to the current tool coordinate X, speed: parameter 811)
G53 X[#[1330+#1300-1]] F#1311 ;X coordinate
#1503 = 1(Spindle moves to the current tool coordinate Z, speed: parameter 819)
G53 Z[#[1370+#1300-1]] F#1319 ;

M300 ; spindle stop detection
M152 ; tool magazine open
M303 ; tool magazine open detection
M154 ; spindle tool release
M301 ; spindle release detection
#1300 = 0 ; current tool = 0

#1503 = 1(spindle lifts to the tool change upper position, speed: parameter 812)
G53 Z#1306 F#1312 ;spindle lifts to the tool change upper position

IF #1!=0 GOTO41;(only unload the tool and exit)
M153 ;tool magazine closed
M304 ;tool magazine closed detection
GOTO3
N41
IF #1!=0 GOTO17;target tool change
(-----Gantry direct tool removal process-----)


(--------tool change for multiple processes-------)
N35
IF #[1552+16-1]==0 GOTO55
M5
N55
G53 Z#1306 F#1312 ;Spindle lifts to the upper position for tool change
M300 ;Spindle stop detection
M169
M171
M173
M175
M[168+[#1-1]*2] ;Open the cylinder
M141
GOTO5;
(--------tool change for multiple processes completed-------)


(-------Gantry straight row starts------)
N32
;M05 ; spindle off

#1503 = 1(upper position of tool change, speed: parameter 812)
G53 Z#1306 F#1312

M300 ; spindle stop detection
M151 ; dust cover closed
M306 ; dust cover closed detection
M154 ; spindle tool release
M301 ; spindle release detection

#1503 = 1(target tool X coordinate, speed: parameter 811)
G53 X[#[1330+#1-1]] F#1311 ;

M152  ;tool magazine open
M303 ;tool magazine open detection

#1503 = 1(target tool Z coordinate, speed: parameter 812)
G53 Z[#[1370+#1-1]]+10 F#1319 ;
G53 Z[#[1370+#1-1]] F1000 ;

M155 ;Tool locking
G04 P#1314
M302 ;Tool locking detection
#1300 = #1 ; update current tool number to loaded tool
M153 ;Tool magazine closed
M304 ;Tool magazine closed detection

#1503 = 1(spindle lifted to the upper position for tool change, speed: parameter 812)
G53 Z#1306 F#1312 ;Spindle lifted to the upper position for tool change
GOTO5;Gantry vertical tool change completed


(-----------Virtual tool unload------------)
N20
IF#1300 == 0 GOTO17;If the current tool = 0, only tool change action
IF #1303==0 GOTO4; 	Virtual tool is not supported

#1503 = 1(Current virtual tool unloads!)
#1503 = 1(Manual tool unload position, speed: parameter 811)
G53 Z#1318 F#1311 ;
G90 G53 X#1316 Y#1317 F#1311

M155 ;Tool lock
WHILE [#[1520+#1099-1] NE 0] DO14;Wait for external start button
#1510=#1300
#1503 = 1(Please manually unload the virtual tool number [%.0f], and press the external start button to continue!)
G04 P1
END14

WHILE [#[1520+#1099-1] NE 1] DO15;Wait for external start to release
#1510=#1
#1503 = 1(Please manually change the virtual tool number [T%.0f], and then release the external start key to automatically calibrate the tool!)
G04 P1
END15

#1300 = 0
IF #1==0 GOTO6;(Only unload the tool and exit)
IF #1!=0 GOTO17;Change the target tool

(---------virtual unload the tool completed-------)



(----Virtual tool change----)
N30

IF #1303==0 GOTO4; 	���⵶��֧��

M153 ;Tool magazine closed
M304 ;Tool magazine closed detection

#1503 = 1(Virtual tool change!)

#1503 = 1(Spindle moves to manual tool change position, speed: parameter 811)
G53 Z#1318 F#1311 ;
G90 G53 X#1316 Y#1317 F#1311

M155 ;Tool locking


WHILE [#[1520+#1099-1] NE 0] DO13;Wait for external start button
#1510=#1
#1503 = 1(Please manually change the virtual tool number [T%.0f], and then press the external start button for automatic tool setting!)
G04 P1
END13

WHILE [#[1520+#1099-1] NE 1] DO16;Wait for external start to release
#1510=#1
#1503 = 1(Please manually change the virtual tool number [T%.0f], and then release the external start key to automatically calibrate the tool!)
G04 P1
END16

GOTO5;Virtual Completion

N5
#1300 = #1;Update target tool number
IF #1305==0 GOTO6; Automatic tool setting is invalid after tool change
#1503 = 1(automatic tool setting...!)
#1502=2; Second fixed tool setting
M98P502

N6
IF #1315==0 GOTO3; Determine whether it is necessary to return to the mechanical position of tool change
#1503 = 1(spindle lifts to the upper position of tool change, speed: parameter 811)
G53 Z#1306 F#1312 ;spindle lifts to the upper position of tool change
#1503 = 1(�ػ���ǰXY��еλ��,�ٶ�:return to the XY mechanical position before tool change, speed: parameter 812)
G90 G53 X#2 Y#3  F#1311

N3 
#1300 = #1;Update target tool number
IF #1993==1 GOTO4;
M150

N4
#1514 = 0;Pause flag
#1503 = 1000 ;Clear auxiliary display
M99