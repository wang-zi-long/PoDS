import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name00 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_0%.log"
file_name0 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_0%.log"
file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_20%.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_20%.log"
file_name3 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_40%.log"
file_name4 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_40%.log"
file_name5 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_60%.log"
file_name6 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_60%.log"
file_name7 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_80%.log"
file_name8 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_80%.log"
file_name9 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/TIDE_100%.log"
file_name10 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/reliable_300T_10E_100D/RCLC_100%.log"

sensor = "|1111|"

global shake
shake = 0

def clctData (size_len, len_array, result_arry, list_index):
	global content
	for i in range(len(len_array)): 
		temp1 = len_array[i]
		temp2 = re.findall(r'\d+', content[temp1])
		msg1  = int(temp2[1])
		msg2  = int(temp2[2])
		if msg1 >= shake and msg1 < size_len:
			result_arry[msg1 - shake, list_index] = msg2

with open(file_name00, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain0_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain0_tide.append(temp)

with open(file_name0, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain0_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain0_rclc.append(temp)

with open(file_name1, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain1_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain1_tide.append(temp)

with open(file_name2, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain1_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain1_rclc.append(temp)

with open(file_name3, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain2_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain2_tide.append(temp)

with open(file_name4, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain2_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain2_rclc.append(temp)

with open(file_name5, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain3_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain3_tide.append(temp)

with open(file_name6, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain3_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain3_rclc.append(temp)

with open(file_name7, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain4_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain4_tide.append(temp)

with open(file_name8, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain4_rclc = []
for i in range(len(mtrx1)):
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain4_rclc.append(temp)

with open(file_name9, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain5_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain5_tide.append(temp)

with open(file_name10, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain5_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 8100:
			temp = (mtrx1[i,1])/100
			chain5_rclc.append(temp)

print(np.min(chain0_tide))
print(np.mean(chain0_tide))
print(np.max(chain0_tide))
print(np.std(chain0_tide))
print("----------------------")
print(np.min(chain1_tide))
print(np.mean(chain1_tide))
print(np.max(chain1_tide))
print(np.std(chain1_tide))
print("----------------------")
print(np.min(chain2_tide))
print(np.mean(chain2_tide))
print(np.max(chain2_tide))
print(np.std(chain2_tide))
print("----------------------")
print(np.min(chain3_tide))
print(np.mean(chain3_tide))
print(np.max(chain3_tide))
print(np.std(chain3_tide))
print("----------------------")
print(np.min(chain4_tide))
print(np.mean(chain4_tide))
print(np.max(chain4_tide))
print(np.std(chain4_tide))
print("----------------------")
print(np.min(chain5_tide))
print(np.mean(chain5_tide))
print(np.max(chain5_tide))
print(np.std(chain5_tide))
print("----------------------")
print(np.min(chain0_rclc))
print(np.mean(chain0_rclc))
print(np.max(chain0_rclc))
print(np.std(chain0_rclc))
print("----------------------")
print(np.min(chain1_rclc))
print(np.mean(chain1_rclc))
print(np.max(chain1_rclc))
print(np.std(chain1_rclc))
print("----------------------")
print(np.min(chain2_rclc))
print(np.mean(chain2_rclc))
print(np.max(chain2_rclc))
print(np.std(chain2_rclc))
print("----------------------")
print(np.min(chain3_rclc))
print(np.mean(chain3_rclc))
print(np.max(chain3_rclc))
print(np.std(chain3_rclc))
print("----------------------")
print(np.min(chain4_rclc))
print(np.mean(chain4_rclc))
print(np.max(chain4_rclc))
print(np.std(chain4_rclc))
print("----------------------")
print(np.min(chain5_rclc))
print(np.mean(chain5_rclc))
print(np.max(chain5_rclc))
print(np.std(chain5_rclc))

chain0 = [chain0_tide, chain0_rclc]
chain1 = [chain1_tide, chain1_rclc]
chain2 = [chain2_tide, chain2_rclc]
chain3 = [chain3_tide, chain3_rclc]
chain4 = [chain4_tide, chain4_rclc]
chain5 = [chain5_tide, chain5_rclc]

labels      = (["PoDS", "micro-ROS"])
colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

bplot_0     = plt.boxplot(chain0, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(1, 1.3), widths=0.2, 
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_0['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_1     = plt.boxplot(chain1, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(2, 2.3), widths=0.2,
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_1['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_2     = plt.boxplot(chain2, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(3, 3.3), widths=0.2,
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_2['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_3     = plt.boxplot(chain3, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(4, 4.3), widths=0.2,
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_3['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_4     = plt.boxplot(chain4, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(5, 5.3), widths=0.2,
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_4['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_5     = plt.boxplot(chain5, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(6, 6.3), widths=0.2,
						  flierprops=dict(markersize=6))
for patch, color in zip(bplot_5['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)

x_position  = [1, 2, 3, 4, 5, 6]
x_posn_fmt  = ["0", "20%", "40%", "60%", "80%", "100%"]

plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=10)
plt.yticks(fontsize=10)
plt.ylabel('Observed end-to-end latency [$ms$]', fontsize=12)
plt.xlabel('Successful probability', fontsize=12)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.legend(bplot_0['boxes'],labels, fontsize=10)  #绘制表示框，右下角绘制
#plt.savefig(fname="pic.png",figsize=[10,10])

plt.show()