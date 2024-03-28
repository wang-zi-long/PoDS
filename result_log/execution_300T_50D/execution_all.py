import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/TIDE_10.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/RCLC_10.log"
file_name3 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/TIDE_20.log"
file_name4 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/RCLC_20.log"
file_name5 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/TIDE_30.log"
file_name6 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/RCLC_30.log"
file_name7 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/TIDE_40.log"
file_name8 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/RCLC_40.log"
file_name9 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/TIDE_50.log"
file_name10 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/execution_300T_50D/RCLC_50.log"

sensor = "|1111|"

global shake
shake = 200

def clctData (size_len, len_array, result_arry, list_index):
	global content
	for i in range(len(len_array)): 
		temp1 = len_array[i]
		temp2 = re.findall(r'\d+', content[temp1])
		msg1  = int(temp2[1])
		msg2  = int(temp2[2])
		if msg1 >= shake and msg1 < size_len:
			result_arry[msg1 - shake, list_index] = msg2

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
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 6000:
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
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 10000:
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
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 14000:
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
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 18000:
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
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 22000:
			temp = (mtrx1[i,1])/100
			chain5_rclc.append(temp)

print(np.mean(chain1_tide))
print(np.std(chain1_tide))
print(np.mean(chain2_tide))
print(np.std(chain2_tide))
print(np.mean(chain3_tide))
print(np.std(chain3_tide))
print(np.mean(chain4_tide))
print(np.std(chain4_tide))
print(np.mean(chain5_tide))
print(np.std(chain5_tide))
print("----------------------")
print(np.mean(chain1_rclc))
print(np.std(chain1_rclc))
print(np.mean(chain2_rclc))
print(np.std(chain2_rclc))
print(np.mean(chain3_rclc))
print(np.std(chain3_rclc))
print(np.mean(chain4_rclc))
print(np.std(chain4_rclc))
print(np.mean(chain5_rclc))
print(np.std(chain5_rclc))

chain1 = [chain1_tide, chain1_rclc]
chain2 = [chain2_tide, chain2_rclc]
chain3 = [chain3_tide, chain3_rclc]
chain4 = [chain4_tide, chain4_rclc]
chain5 = [chain5_tide, chain5_rclc]

tide_mean = [np.mean(chain1_tide), np.mean(chain2_tide), np.mean(chain3_tide), np.mean(chain4_tide), np.mean(chain5_tide)]
rclc_mean = [np.mean(chain1_rclc), np.mean(chain2_rclc), np.mean(chain3_rclc), np.mean(chain4_rclc), np.mean(chain5_rclc)]
x =list(range(len(tide_mean)))
total_width, n = 0.65, 2
width = total_width / n
 
plt.bar(x, tide_mean, width=width, label='PoDS', color=(120/255.,214/255.,201/255.), edgecolor='black')
for i in range(len(x)):
    x[i] = x[i] + width
plt.bar(x, rclc_mean, width=width, label='micro-ROS', color=(82/255.,159/255.,101/255.), edgecolor='black')

for i, v in enumerate(tide_mean):
    plt.text(i, v + 1, str(round(v, 2)), ha='center', va='bottom', fontsize=8)
for i, v in enumerate(rclc_mean):
    plt.text(i + width, v + 1, str(round(v, 2)), ha='center', va='bottom', fontsize=8)

x_position  = list(range(len(tide_mean)))
x_posn_fmt  = ["$10$", "$20$", "$30$", "$40$", "$50$"]
plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=10)
plt.tick_params(axis='x', which='both', bottom=False, top=False)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.yticks(fontsize=10)
plt.ylabel('Maximum end-to-end latency [$ms$]', fontsize=12)
plt.xlabel('Callback execution time [$ms$]', fontsize=12)
plt.legend(loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
plt.show()

# labels      = (["TIDE", "RCLC"])
# colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

# bplot_1     = plt.boxplot(chain1, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(1, 1.3), widths=0.2)
# for patch, color in zip(bplot_1['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_2     = plt.boxplot(chain2, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(2, 2.3), widths=0.2)
# for patch, color in zip(bplot_2['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_3     = plt.boxplot(chain3, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(3, 3.3), widths=0.2)
# for patch, color in zip(bplot_3['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_4     = plt.boxplot(chain4, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(4, 4.3), widths=0.2)
# for patch, color in zip(bplot_4['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_5     = plt.boxplot(chain5, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(5, 5.3), widths=0.2)
# for patch, color in zip(bplot_5['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)

# x_position  = [1, 2, 3, 4, 5]
# x_posn_fmt  = ["$10$", "$20$", "$30$", "$40$", "$50$"]

# plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=14)
# plt.yticks(fontsize=10)
# plt.ylabel('Latency [$ms$]', fontsize=13)
# plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
# plt.legend(bplot_1['boxes'],labels,loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
# #plt.savefig(fname="pic.png",figsize=[10,10])

# plt.show()