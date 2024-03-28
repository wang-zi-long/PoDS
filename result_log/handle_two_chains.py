import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/many_chains/TIDE_Two.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/many_chains/RCLC_Two.log"

sensor = "1111 timer publish"
action = "1111 sub   received"
second_start = "2222 timer publish"
second_end   = "2222 sub   received"

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
end1       = [x for x in range(len(content)) if (action) in content[x]]
size1	   = min(len(start1), len(end1))
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
clctData(size1, end1, mtrx1, 2)
chain1_tide = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,2] != 0 :
			temp = (mtrx1[i,2]-mtrx1[i,1])/100
			chain1_tide.append(temp)

start2     = [x for x in range(len(content)) if (second_start) in content[x]]
end2	   = [x for x in range(len(content)) if (second_end) in content[x]]
size2	   = min(len(start2), len(end2))
mtrx2	   = np.zeros([size2 - shake, 3], dtype = int)

clctData(size2, start2, mtrx2, 1)
clctData(size2, end2, mtrx2, 2)
chain2_tide = []
for i in range(len(mtrx2)) :
		if mtrx2[i,1] != 0 and mtrx2[i,2] != 0 :
			temp = (mtrx2[i,2]-mtrx2[i,1])/100
			chain2_tide.append(temp)

with open(file_name2, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
start1     = [x for x in range(len(content)) if (sensor) in content[x]]
end1       = [x for x in range(len(content)) if (action) in content[x]]
size1	   = min(len(start1), len(end1))
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
clctData(size1, end1, mtrx1, 2)
chain1_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,2] != 0 :
			temp = (mtrx1[i,2]-mtrx1[i,1])/100
			chain1_rclc.append(temp)

start2     = [x for x in range(len(content)) if (second_start) in content[x]]
end2	   = [x for x in range(len(content)) if (second_end) in content[x]]
size2	   = min(len(start2), len(end2))
mtrx2	   = np.zeros([size2 - shake, 3], dtype = int)

clctData(size2, start2, mtrx2, 1)
clctData(size2, end2, mtrx2, 2)
chain2_rclc = []
for i in range(len(mtrx2)) :
		if mtrx2[i,1] != 0 and mtrx2[i,2] != 0 :
			temp = (mtrx2[i,2]-mtrx2[i,1])/100
			chain2_rclc.append(temp)

chain1_two = [chain1_tide, chain1_rclc]
chain2_two = [chain2_tide, chain2_rclc]

print(np.mean(chain1_tide))
print(np.mean(chain2_tide))
print(np.std(chain1_tide))
print(np.std(chain2_tide))
print("----------------------")
print(np.mean(chain1_rclc))
print(np.mean(chain2_rclc))
print(np.std(chain1_rclc))
print(np.std(chain2_rclc))

labels      = (["TIDE", "RCLC"])
colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

bplot_2     = plt.boxplot(chain1_two, patch_artist=True, labels=labels, showfliers=False, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(2, 2.25), widths=0.2)
for patch, color in zip(bplot_2['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)
bplot_3     = plt.boxplot(chain2_two, patch_artist=True, labels=labels, showfliers=False, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(3, 3.25), widths=0.2)
for patch, color in zip(bplot_3['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)

x_position  = [2, 3]
x_posn_fmt  = ["$2-1$", "$2-2$"]

plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=14)
plt.yticks(fontsize=10)
plt.ylabel('Latency [$ms$]', fontsize=13)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.legend(bplot_2['boxes'],labels,loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
#plt.savefig(fname="pic.png",figsize=[10,10])

plt.show()