import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/CaseStudy/TIDE.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/CaseStudy/RCLC.log"

sensor = "|1111|"
second = "|2222|"
third  = "|3333|"
four   = "|4444|"

global shake
shake = 100

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

start1     = [x for x in range(len(content)) if (second) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain2_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain2_tide.append(temp)

start1     = [x for x in range(len(content)) if (third) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain3_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain3_tide.append(temp)

start1     = [x for x in range(len(content)) if (four) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain4_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain4_tide.append(temp)

with open(file_name2, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain1_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 5000:
			temp = (mtrx1[i,1])/100
			chain1_rclc.append(temp)

start1     = [x for x in range(len(content)) if (second) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain2_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] < 10000:
			temp = (mtrx1[i,1])/100
			chain2_rclc.append(temp)

start1     = [x for x in range(len(content)) if (third) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain3_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain3_rclc.append(temp)

start1     = [x for x in range(len(content)) if (four) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain4_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain4_rclc.append(temp)

print(np.mean(chain1_tide))
print(np.max(chain1_tide))
print(np.std(chain1_tide))
print("----------------------")
print(np.mean(chain2_tide))
print(np.max(chain2_tide))
print(np.std(chain2_tide))
print("----------------------")
print(np.mean(chain3_tide))
print(np.max(chain3_tide))
print(np.std(chain3_tide))
print("----------------------")
print(np.mean(chain4_tide))
print(np.max(chain4_tide))
print(np.std(chain4_tide))
print("----------------------")
print(np.mean(chain1_rclc))
print(np.max(chain1_rclc))
print(np.std(chain1_rclc))
print("----------------------")
print(np.mean(chain2_rclc))
print(np.max(chain2_rclc))
print(np.std(chain2_rclc))
print("----------------------")
print(np.mean(chain3_rclc))
print(np.max(chain3_rclc))
print(np.std(chain3_rclc))
print("----------------------")
print(np.mean(chain4_rclc))
print(np.max(chain4_rclc))
print(np.std(chain4_rclc))

chain1_three = [chain1_tide, chain1_rclc]
chain2_three = [chain2_tide, chain2_rclc]
chain3_three = [chain3_tide, chain3_rclc]
chain4_three = [chain4_tide, chain4_rclc]

tide_mean = [np.mean(chain1_tide), np.mean(chain2_tide), np.mean(chain3_tide), np.mean(chain4_tide)]
rclc_mean = [np.mean(chain1_rclc), np.mean(chain2_rclc), np.mean(chain3_rclc), np.mean(chain4_rclc)]
x =list(range(len(tide_mean)))
total_width, n = 0.7, 2
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
x_posn_fmt  = ["$Chain1$", "$Chain2$", "$Chain3$", "$Chain4$"]
plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=10)
plt.tick_params(axis='x', which='both', bottom=False, top=False)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.yticks(fontsize=10)
plt.ylabel('End-to-end latency [$ms$]', fontsize=12)
plt.xlabel('Case Study', fontsize=12)
plt.legend(loc='upper right', fontsize=12)  #绘制表示框，右下角绘制
plt.show()

# labels      = (["TIDE", "RCLC"])
# colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

# bplot_1     = plt.boxplot(chain1_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(1, 1.3), widths=0.2)
# for patch, color in zip(bplot_1['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_2     = plt.boxplot(chain2_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(2, 2.3), widths=0.2)
# for patch, color in zip(bplot_2['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_3     = plt.boxplot(chain3_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(3, 3.3), widths=0.2)
# for patch, color in zip(bplot_3['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)
# bplot_4     = plt.boxplot(chain4_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(4, 4.3), widths=0.2)
# for patch, color in zip(bplot_4['boxes'], colors):
# 				patch.set_facecolor(color)
# 				patch.set(linewidth=0.5)

# x_position  = [1, 2, 3, 4]
# x_posn_fmt  = ["$Chain1$", "$Chain2$", "$Chain3$", "$Chain4$"]

# plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=14)
# plt.yticks(fontsize=10)
# plt.ylabel('Latency [$ms$]', fontsize=13)
# plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
# plt.legend(bplot_1['boxes'],labels,loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
# #plt.savefig(fname="pic.png",figsize=[10,10])

# plt.show()