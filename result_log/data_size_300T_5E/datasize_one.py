import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/data_size_300T_5E/TIDE_500.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/data_size_300T_5E/RCLC_500.log"

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
mtrx1	   = np.zeros([size1 - shake, 3], dtype = int)

clctData(size1, start1, mtrx1, 1)
chain1_rclc = []
for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 :
			temp = (mtrx1[i,1])/100
			chain1_rclc.append(temp)

print(np.mean(chain1_tide))
print(np.std(chain1_tide))
print(np.mean(chain1_rclc))
print(np.std(chain1_rclc))

chain1_three = [chain1_tide, chain1_rclc]

labels      = (["TIDE", "RCLC"])
colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

bplot_4     = plt.boxplot(chain1_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(4, 4.25), widths=0.2)
for patch, color in zip(bplot_4['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)

x_position  = [4]
x_posn_fmt  = ["$1$"]

plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=14)
plt.yticks(fontsize=10)
plt.ylabel('Latency [$ms$]', fontsize=13)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.legend(bplot_4['boxes'],labels,loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
#plt.savefig(fname="pic.png",figsize=[10,10])

plt.show()