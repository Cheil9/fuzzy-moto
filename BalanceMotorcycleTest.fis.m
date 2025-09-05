[System]
Name='BalanceMotorcycleTest'
Type='mamdani'
Version=2.0
NumInputs=3
NumOutputs=1
NumRules=27
AndMethod='min'
OrMethod='max'
ImpMethod='min'
AggMethod='max'
DefuzzMethod='centroid'

[Input1]
Name='theta'
Range=[0 2]
NumMFs=3
MF1='neg':'trimf',[0 0.5 1]
MF2='zero':'trimf',[0.5 1 1.5]
MF3='pos':'trimf',[1 1.5 2]

[Input2]
Name='thetadot'
Range=[0 0.2]
NumMFs=3
MF1='neg2':'trimf',[0 0.05 0.1]
MF2='zero2':'trimf',[0.05 0.1 0.15]
MF3='pos2':'trimf',[0.1 0.15 0.2]

[Input3]
Name='IWspeed'
Range=[0 0.0002]
NumMFs=3
MF1='neg3':'trimf',[0 0.00005 0.0001]
MF2='zero3':'trimf',[0.00005 0.0001 0.00015]
MF3='pos3':'trimf',[0.0001 0.00015 0.0002]

[Output1]
Name='output1'
Range=[-0.1 0.1]
NumMFs=3
MF1='left':'trimf',[-0.1 -0.05 0]
MF2='upright':'trimf',[-0.02 0 0.02]
MF3='right':'trimf',[0 0.05 0.1]

[Rules]
1 1 1, 3 (1) : 1
1 1 2, 3 (1) : 1
1 1 3, 2 (1) : 1
1 2 1, 3 (1) : 1
1 2 2, 3 (1) : 1
1 2 3, 2 (1) : 1
1 3 1, 2 (1) : 1
1 3 2, 2 (1) : 1
1 3 3, 1 (1) : 1
2 1 1, 3 (1) : 1
2 1 2, 3 (1) : 1
2 1 3, 2 (1) : 1
2 2 1, 2 (1) : 1
2 2 2, 2 (1) : 1
2 3 3, 2 (1) : 1
2 3 1, 1 (1) : 1
2 3 2, 1 (1) : 1
2 3 3, 2 (1) : 1
3 1 1, 2 (1) : 1
3 1 2, 2 (1) : 1
3 1 3, 1 (1) : 1
3 2 1, 2 (1) : 1
3 2 2, 1 (1) : 1
3 2 3, 1 (1) : 1
3 3 1, 1 (1) : 1
3 3 2, 1 (1) : 1
3 3 3, 1 (1) : 1
