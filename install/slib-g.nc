
O9053

G91G00X#0Y#1Z#2A#3B#4C#5 F#10;XYAB快速进给到目标机械位置
M99

O9081
IF #13>0 GOTO1
#13=1
(循环处理)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB快速进给到孔位处
G90G00Z#10;Z快速进给到R点
G90G01Z#11;Z以切削速度钻至孔底位置
G90G00Z#10;Z快速抬升到R位置
#13=#13-1;循环次数递减
END13
G90G00Z#12;Z快速抬升到退刀位置
M99

O9082
IF #13>0 GOTO1
#13=1
(循环处理)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB快速进给到孔位处
G90G00Z#10;Z快速进给到R点
G90G01Z#11;Z以切削速度钻至孔底位置
G04P#14
G90G00Z#10;Z快速抬升到R位置
#13=#13-1;循环次数递减
END13
G90G00Z#12;Z快速抬升到退刀位置
M99
  
O9073
IF #13>0 GOTO5
#13=1
(循环处理)
N5 WHILE#13>0DO13
#9=#10
G91G00X#0Y#1A#3B#4C#5;XY快速进给到孔位处
G90G00Z#10;Z快速进给到R点
#21 =0-#15  //每次进给深度带方向
N6#9=#9+#21;计算逐层钻孔位置
#20=#9+#724;计算钻孔回退位置
IF #9>#11 GOTO7
#9=#11
#20=#10
N7G90G01Z#9;Z以切削速度逐层钻孔
G90G00Z#20;Z轴逐层钻孔间歇回退
IF #9==#11 GOTO8
GOTO6
N8#13=#13-1;循环次数递减
G04P#14
END13
G90G00Z#12;Z快速抬升到退刀位置
M99

O9083
IF #13>0 GOTO5
#13=1
(循环处理)
N5 WHILE#13>0DO13
#9=#10 //R点位置
G91G00X#0Y#1A#3B#4C#5;XY快速进给到孔位处
G90G00Z#10;Z快速进给到R点
#21 =0-#15  //每次进给深度带方向

N6#9=#9+#21;计算逐层钻孔位置
#20=#9+#724;计算钻孔回退位置
IF #9>#11 GOTO7
#9=#11
#20=#10
N7G90G01Z#9;Z以切削速度逐层钻孔
G90G00Z#10;Z轴回退至R点
G90G00Z#20
IF #9==#11 GOTO8
GOTO6
N8#13=#13-1;循环次数递减
G04P#14
END13
G90G00Z#12;Z快速抬升到退刀位置
M99

O9074
#1501=0;设置左旋攻螺纹
IF #13>0 GOTO1
#13=1
(循环处理)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB快速进给到孔位处
G90G00Z#10;Z快速进给到R点
G90G01Z#11;以切削速度至孔底位置,伺服主轴反转
G90G01Z#10;以切削速度抬升至R点,伺服主轴正转
#13=#13-1;循环次数递减
END13
G90G00Z#12;Z快速抬升到退刀位置
M99

O9084
#1501=1;设置右旋攻螺纹
IF #13>0 GOTO1
#13=1
(循环处理)
N1WHILE#13>0DO13
G91G00X#0Y#1A#3B#4C#5;XYAB快速进给到孔位处
G90G00Z#10;Z快速进给到R点
G90G01Z#11;以切削速度至孔底位置,伺服主轴正转
G90G01Z#10;以切削速度抬升至R点,伺服主轴反转
#13=#13-1;循环次数递减
END13
G90G00Z#12;Z快速抬升到退刀位置
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

O501(单轴寻零)
IF #[1046+#1*3]==0 GOTO30;如果零点功能未使能,结束

#1618=0 //寻零开始标志
(初始化各轴探测距离)
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

#21=0;探测循环变量
#30=0;探测机床坐标位置初始化
#22 = #[607+#1]
#23=0

#1503 = 1(靠近零点信号...)
#[2+#1]=10000*#[612+#1]-5000;确定探测方向及距离


N4
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#22 P#[1045+#1*3] L#[1047+#1*3] K#23 Q0;进行探测,限位探测开启

IF #[1920+#1]<=2 GOTO1;探测到零点信号转N1
#[2+#1]=-#[2+#1];触碰到限位,探测反向
#1503 = 1(触碰到限位反向远离...)
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#[607+#1] P#[1045+#1*3] L#[1047+#1*3] K0 Q0;触碰到限位,反向进行探测,限位探测关闭

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
IF #24 == #[1910+#1] GOTO2;停留在零点信号作用区转N2
#1503 = 1(冲出零点作用区反向远离...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15 F#20 P#[1045+#1*3] L#[1047+#1*3] K0 Q1;冲出零点信号作用区,反向进行探测
N2
#1503 = 1(停留在零点作用去反向远离...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15  F#20 P#[1045+#1*3] L[1-#[1047+#1*3]] K0 Q1;反向进行探测,翻转有效电平

#20=#20/2
#22 =#20
#23 = 0

//#30=#30+#[1925+#1];保存探测结果
#[2100+#21]=#[1925+#1]; 记录每次开关精度
#21=#21+1

IF #21<#606 GOTO4

//判断偏差

IF #617<=0 GOTO25 //直接赋值不判断
#2105=10+#1         //开始计算最大误差值
IF #2105<=#617 GOTO25
#[1515+#1]=0
#1503 = 1(零点开关误差过大,回零失败!)
G04 P2000
GOTO30

N25
//#[880+#1]=#[880+#1]-#30/#21;重设机床零点坐标
#[880+#1]=#[735+#1]
#[1515+#1]=1;刷新各轴回零标志

#1618=1 //寻零开始标志
#25=#655 //保存软限位使能参数
#655 =0(取消软限位)
#1503 = 1(回到各轴参考点位置...)
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

#655 =#25(恢复软限位参数)
M99

O502(对刀寻零)


#1=2;操作轴号





N13
(各轴回零标志判断)
IF #720 == 0 GOTO20;

IF [#1515+#1516+#1517]>=3 GOTO20;
#1503 = 1(X.Y,Z轴机械未全部归零!)
G04 P2000
GOTO3 ;结束


N20
IF #1300!=0 GOTO21;
#1503 = 1(当前刀位空刀不能对刀!)
G04 P2000
GOTO3 ;结束


N21
IF #1300>[#1301+20] GOTO4; 大于虚拟和实际


IF #1502==0 GOTO6;
IF #1502==1 GOTO7;
IF #1502==2 GOTO8;

N6
IF #1078!=0 GOTO36;如果浮动对刀端口未分配,结束
#1503 = 1(浮动对刀信号输入端口未分配!)
G04 P2000
GOTO3 ;结束
N36

IF #1079!=0 GOTO46;如果对刀功能未使能,结束
#1503 = 1(浮动对刀信号输入未使能!)
G04 P2000
GOTO3 ;结束
N46

IF #628==0 GOTO3;如果浮动对刀功能未使能,结束
IF #1300>#1301 GOTO30
//#[1430 + [#1300-1]] = 0;当前刀具Z偏置设置0
GOTO31
N30
//#[1472] = 0;虚拟刀具Z偏置设置为0
N31
#837 = 0; 当前外部偏置设置为0
#1503 = 1(浮动对刀开始...)
GOTO4

N7 
IF #630==0 GOTO3;如果固定对刀功能未使能,结束
(#7 = #882 ;记录当前工件表面的机械位置)
#7 = #[807+[#578-1]*5] ;记录Z工件零点的机械位置
#1503 = 1(首次固定对刀开始...)
GOTO9

N8  
IF #1075!=0 GOTO38;如果对刀端口未分配,结束
#1503 = 1(固定对刀信号输入端口未分配!)
G04 P2000
GOTO3 ;结束
N38

IF #1076!=0 GOTO48;如果对刀功能未使能,结束
#1503 = 1(固定对刀信号输入未使能!)
G04 P2000
GOTO3 ;结束
N48

IF #630==0 GOTO3;如果固定对刀功能未使能,结束
#1503 = 1(固定对刀开始...)
GOTO9

N9
//固定位置换算

#10 = #635
#11 = #636
IF #1302!=1 GOTO35; 	多工序
#10 = #635+#[1390+#1300-1]
#11 = #636+#[1410+#1300-1]

N35
#13=0
#14=0
#15=0
#[10+#943] =#638
#[10+#944] =#639


#1503 = 1(移动至固定对刀初始位置.速度:63号参数)
IF#637>=#882 GOTO5


G53X#10Y#11A#13B#14C#15
G53Z#637
GOTO4

N5 G53Z#637
G53X#10Y#11A#13B#14C#15

(初始化各轴探测距离)
N4 
#2=0
#3=0
#4=0
#5=0
#6=0

#20=#500;起跳速度
#21=0;探测循环变量
#30=0;探测机床坐标位置初始化
#[2+#1]=-5000;确定探测方向及距离
#22 = #632

//分配输入端口
IF #1502==0 GOTO26;
IF #1502==2 GOTO28;
N26
#26 = #1078 //浮动对刀端口
#28 = #1080 //浮动对刀
GOTO29

N28
#26 = #1075 //固定对刀端口
#28 = #1077 //固定对刀电平

N29
N1 
#1503 = 1(对刀信号搜索中...)
G91G31X#2Y#3Z#4A#5B#6 F#22 P#26 L#28 K0 Q1;靠近对刀信号 忽略限位 立即停止

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
IF #24==#[1910+#1] GOTO2;停留在对刀信号作用区转N2

GOTO22
N2
#1503 = 1(反向退出对刀信号...)
G91G31X-#2Y-#3Z-#4A-#5B-#6 F#22 P#26 L[1-#28] K0 Q1;反向退出探测
N22
#20=#20/2
#22=#20
#30=#30+#[1925+#1];保存探测结果
#21=#21+1
(G91 G00 Z1)
IF #21<#631 GOTO1

#31 =  #30/#21  (对刀仪的机械坐标)

IF #1502==0 GOTO16;
IF #1502==1 GOTO17;
IF #1502==2 GOTO18;

N16       ;浮动对刀仪机械位置与浮动对刀厚度 以及当前刀具Z偏置 得到工件表面的机械坐标并填入当前坐标系获得加工Z平面
#32 = #31 - #629
IF #1300>#1301 GOTO52
#[807+[#578-1]*5] = #32 - #[1430 + [#1300-1]]  //实际刀坐标偏置
GOTO53
N52
#[807+[#578-1]*5] = #32 - #[1473 + [#1300-#1301-1]]//虚拟刀坐标偏置
N53
#1508=1
GOTO19

N17       ;首次固定对刀,将工件表面与对刀仪的差值填入当前坐标系Z偏移
#32 = #7-#31
#[807+[#578-1]*5] = #32 ;当前坐标系Z

IF #1300>#1301 GOTO32
#[1430 + [#1300-1]] = #31 ;刷新当前刀具的Z偏移
GOTO33
N32
#[1473 + [#1300-#1301-1]] = #31;刷新当前虚拟刀具的Z偏移
N33
#1508 = 1;(首次对刀完成)
GOTO19

N18       ;换刀固定对刀,将对刀仪的机械位置填入当前刀具号的Z偏置中
#[1430 + [#1300-1]] = #31
IF #1300>#1301 GOTO34
GOTO19
N34
#[1473 + [#1300-#1301-1]] = #31;刷新当前虚拟刀具的Z偏移
N19

#1503 = 1(对刀后回退距离.速度:63号参数)

G91G0Z#640

#1503 = 1(对刀完成!)

#1509 =1
N3
G04 P500
#1509 =0
M99




O503(双Y)

IF #101==0 GOTO30;端口号未分配 退出

#1618=0 //寻零开始标志
(初始化各轴探测距离)
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

#21=0;探测循环变量
#30=0;探测机床坐标位置初始化
#22 = #103  //寻零速度
#23=0

#1503 = 1(靠近零点信号...)
#[2+1]=10000*#104-5000;确定探测方向及距离


N4
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#22 P#101 L#102 K#23 Q0;进行探测,限位探测开启

IF #[1920+#1]<=2 GOTO1;探测到零点信号转N1
#[2+#1]=-#[2+#1];触碰到限位,探测反向
#1503 = 1(触碰到限位反向远离...)
#[10+#943]= #5
#[10+#944]= #6
G91G31X#2Y#3Z#4A#13B#14C#15 F#103 P#101 L#102 K0 Q0;触碰到限位,反向进行探测,限位探测关闭

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
IF #24 == #[1910+#1] GOTO2;停留在零点信号作用区转N2
#1503 = 1(冲出零点作用区反向远离...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15 F#20 P#101 L#102 K0 Q1;冲出零点信号作用区,反向进行探测
N2
#1503 = 1(停留在零点作用去反向远离...)
G91G31X-#2Y-#3Z-#4A-#13B-#14C-#15  F#20 P#101 L[1-#102] K0 Q1;反向进行探测,翻转有效电平

#20=#20/2
#22 =#20
#23 = 0

//#30=#30+#[1925+#1];保存探测结果
#[2100+#21]=#[1925+#1]; 记录每次开关精度
#21=#21+1

IF #21<#606 GOTO4

//判断偏差

IF #617<=0 GOTO25 //直接赋值不判断
#2105=10+#1         //开始计算最大误差值
IF #2105<=#617 GOTO25
#[1515+#1]=0
#1503 = 1(零点开关误差过大,回零失败!)
G04 P2000
GOTO30

N25



#1618=1 //寻零开始标志
N30
M99





O20000(换刀程序)

(记录换刀前工件位置)
#2 = #880
#3 = #881
#4 = #882
#5 = #883
#1514 = 1  //

// IF #1300>[#1301+20] GOTO4; 大于虚拟和实际
IF #1>[#1301+20] GOTO4; 大于虚拟和实际
IF #1302==0 GOTO4; 	无刀库退出
IF #1300==#1 GOTO4; 目标刀具与当前刀具相同退出

IF #720 == 0 GOTO50;
(各轴回零标志判断)
IF [#1515+#1516+#1517]>=3 GOTO50;
#1503 = 1(X,Y,Z are not fully homed!)
G04 P10
GOTO4 ;结束

N50




M151 //除尘罩关闭
M153 //刀库关闭
M155 //刀具锁紧


(初始入口)
IF #1302==4 GOTO60; 	disk tool unload and load

IF #1300>#1301 GOTO20;(manual tool removal)
IF #1302==1 GOTO25; 	多工序
IF #1302==2 GOTO22; 	龙门架直排
IF #1302==3 GOTO23; 	固定直排
IF #1302==4 GOTO4; 	disk tool unload

N17; 只换刀
IF #1>#1301 GOTO30;  	manual tool load
IF #1302==1 GOTO35; 	多工序
IF #1302==2 GOTO32; 	龙门架直排
IF #1302==3 GOTO33; 	固定直排
IF #1302==4 GOTO4; 	disk tool load




(---------------固定直排换刀流程-----------------)
N23
#1503 = 1(固定直排换刀开始!)

M306 //除尘罩关闭检测

M05 ;主轴关
M300

#1503 = 1(主轴上抬到换刀上位处...)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处

#1503 = 1(主轴移动换刀前置点Y处...)
G53 Y#1309 F#1311 ;主轴移动换刀前置点Y处

#1503 = 1(主轴移动当前刀具坐标X处...)
G53 X[#[1330+#1300-1]] F#1311 ;X坐标处

#1503 = 1(主轴移动到换刀下位...)
//G53 Z#1307 F#1312 ;
G53 Z[#[1370+#1300-1]] F#1312 ;Z的每把刀换刀下位

#1503 = 1(主轴移动当前刀具坐标Y处...)
G53 Y[#[1350+#1300-1]] F#1313 ;Y坐标处


M154 //主轴松刀
G04 P100 //100ms 
M301 //主轴松开检测

#1503 = 1(主轴上抬到换刀上位处...)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处

#1503 = 1(主轴移动到目标刀具XY坐标...)
G53 X[#[1330+#1-1]] Y[#[1350+#1-1]] F#1311 ;


#1503 = 1(主轴移动到换刀下位...)
//G53 Z#1307 F#1312 ;
G53 Z[#[1370+#1-1]] F#1312 ;Z的每把刀换刀下位


#1503 = 1(主轴紧刀)
M155 //刀具锁紧
G04 P200
M302 //刀具锁紧检测


#1503 = 1(主轴移动换刀前置点Y处...)
G53 Y#1309 F#1313 ;主轴移动换刀前置点Y处

#1503 = 1(主轴上抬到换刀上位处...)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处
GOTO5;固定直排换刀完成


(---------------多工序换刀流程-----------------)

N25
IF#1300 == 0 GOTO17;当前刀=0则只换刀动作
IF #[1552+16-1]==0 GOTO45
M5
N45
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处
M300 //主轴停止检测
M169
M171
M173
M175
M141
#1300 = 0 (空刀)
IF #1!=0 GOTO51;(只卸刀退出)
GOTO3
N51
IF #1!=0 GOTO17;目标刀换刀

(-----------多工序卸刀完成--------------)



(---------------龙门架直排换刀流程-----------------)
N22


IF#1300 == 0 GOTO17;当前刀=0则只换刀动作

#1503 = 1(龙门架直排换刀开始!)

M05  //主轴关

M151 //除尘罩关闭
M306 //除尘罩关闭检测

#1503 = 1(主轴上抬到换刀上位处,速度:812号参数)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处

#1503 = 1(主轴移动当前刀具坐标X处,速度:811号参数)
G53 X[#[1330+#1300-1]] F#1311 ;X坐标处

#1503 = 1(主轴移动到当前刀具坐标Z处,速度:819号参数)
G53 Z[#[1370+#1300-1]] F#1319 ;

M300 //主轴停止检测
M152 //刀库打开
M303 //刀库打开检测

M154 //主轴松刀
M301 //主轴松开检测

#1300 = 0

#1503 = 1(主轴上抬到换刀上位处,速度:812号参数)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处


IF #1!=0 GOTO41;(只卸刀退出)
M153 //刀库关闭
M304 //刀库关闭检测
GOTO3

N41
IF #1!=0 GOTO17;目标刀换刀


(-----------卸刀完成--------------)

(-----------多工序换刀------------)

N35

IF #[1552+16-1]==0 GOTO55
M5
N55
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处
M300 //主轴停止检测
M169
M171
M173
M175
M[168+[#1-1]*2] //打开气缸
M141
GOTO5;
//多工序换刀完成




(-------龙门直排开始---------------)
N32

//M05  //主轴关

#1503 = 1(主轴上抬到换刀上位处,速度:812号参数)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处


M300 //主轴停止检测

M151  //除尘罩关闭
M306 //除尘罩关闭检测

M154 //主轴松刀
M301 //主轴松开检测

#1503 = 1(主轴移动到目标刀具X坐标,速度:811号参数)
G53 X[#[1330+#1-1]] F#1311 ;

M152  //刀库打开
M303 //刀库打开检测


#1503 = 1(主轴移动到目标刀具Z坐标,速度:812号参数)
G53 Z[#[1370+#1-1]]+10 F#1319 ;
G53 Z[#[1370+#1-1]] F1000 ;



M155 //刀具锁紧
G04 P#1314
M302 //刀具锁紧检测

#1300 = #1;


M153 //刀库关闭
M304 //刀库关闭检测


#1503 = 1(主轴上抬到换刀上位处,速度:812号参数)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处



GOTO5;龙门架直排换刀完成

(-----------虚拟刀--------------)
N20


IF#1300 == 0 GOTO17;当前刀=0则只换刀动作

IF #1303==0 GOTO4; 	虚拟刀不支持

#1503 = 1(当前虚拟刀卸刀!)

#1503 = 1(主轴移动到手动卸刀位,速度:811号参数)
G53 Z#1318 F#1311 ;
G90 G53 X#1316 Y#1317 F#1311

M155 //刀具锁紧
WHILE [#[1520+#1099-1] NE 0] DO14;等待外部启动按钮
#1510=#1300
#1503 = 1(manually remove the tool[T%.0f], and press the external start key..)
G04 P10
END14
M154
G04 P100
WHILE [#[1520+#1099-1] NE 1] DO15;等待外部启动松开
#1510=#1
#1503 = 1(manually change the tool[T%.0f], and release the external start key..)
G04 P10
END15
M155
G04 P100

#1300 = 0
IF #1==0 GOTO6;(只卸刀退出)
IF #1!=0 GOTO17;目标刀换刀

(-----------卸刀完成------------)



(----虚拟换刀-----)
N30

IF #1303==0 GOTO4; 	虚拟刀不支持

M153 //刀库关闭
M304 //刀库关闭检测

#1503 = 1(虚拟刀换刀!)

#1503 = 1(主轴移动到手动换刀位,速度:811号参数)
G53 Z#1318 F#1311 ;
G90 G53 X#1316 Y#1317 F#1311

M155 //刀具锁紧


WHILE [#[1520+#1099-1] NE 0] DO13;等待外部启动按钮
#1510=#1
#1503 = 1(manually change the tool[T%.0f], and press the external start key..)
G04 P10
END13
M154
G04 P100
WHILE [#[1520+#1099-1] NE 1] DO16;等待外部启动松开
#1510=#1
#1503 = 1(manually change the tool[T%.0f], and release the external start key..)
G04 P10
END16
M155
G04 P100



GOTO5;虚拟完成


N60 (-----disc tool removal-----)
M5 ; stop spindle
M151 ; dust cover - retreat
M153 ; disk magazine - retreat
M155 ; tool locked signal at start
M157 ; retreat main tool
M306 ; dust cover retreated
M304 ; disk magazine retreated

(determine tool recovery and delivery positions)

#7 = [#1301+1] ; number of slots in the disk, capacity plus 1 because slot 0 is used to manually remove tools.
#8 = 0 ; tool recovery position, 0 for tools above capacity
#9 = 0 ; tool delivery position, 0 for tools above capacity
IF #1300 > #1301 GOTO61
#8 = [360 * #1300 / #7] ; position = 360 degrees * tool number / total disk slots
N61
IF #1 > #1301 GOTO62
#9 = [360 * #1 / #7] ; position = 360 degrees * tool number / total disk slots
N62

(tool recovery position)
M50 ; tool air blower
G53 G90 C#8
M160 ; push cylinder
G4 P1400 ; M332 - push cylinder extended
M152 ; extend disk magazine
M303 ; disk magazine extended
M154 ; tool release
M301 ; tool release detection
G4 P220
M161 ; retreat push cylinder
G4 P1400 ; M333 - push cylinder retreated
(update tool number to T0, no tool)
#1300 = 0

(recovered tool is virtual)

(target tool is virtual)

(target tool is T0, no tool)

(tool delivery position)
G53 G90 C#9
M160 ; push cylinder
G4 P1400 ; M332 - push cylinder extended
M155 ; restore tool lock state
G4 P1800 ; M302 - tool locked detection
(update tool number)
#1300 = #1

M51  ; turn off tool air blower
M153 ; retract disk magazine
M304 ; disk magazine retracted
M161 ; retreat push cylinder
G4 P1400 ; M333 - push cylinder retreated

(exit sequence)
M156 ; restore main tool to lower position (work position)
G4 P2000

GOTO4 ; end


N5
#1300 = #1;更新目标刀号

IF #1305==0 GOTO6; 换刀后自动对刀无效

#1503 = 1(自动对刀中...!)
#1502=2; 第二次固定对刀
M98P502

N6
IF #1315==0 GOTO3; 判断是否需要回加工换刀机械位置

#1503 = 1(主轴上抬到换刀上位处,速度:811号参数)
G53 Z#1306 F#1312 ;主轴上抬到换刀上位处
#1503 = 1(回换刀前XY机械位置,速度:812号参数)
G90 G53 X#2 Y#3  F#1311




N3 
#1300 = #1;更新目标刀号

IF #1993==1 GOTO4;
M150


N4
#1514 = 0//暂停标志
#1503 = 1000 //清除辅助显示
M99