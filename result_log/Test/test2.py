import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/Test/test11.log"
file_name2 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/Test/test12.log"

sensor = "|1111|"
action = "|2222|"

global shake
shake = 0

def clctData (size_len, len_array, result_arry):
	global content
	for i in range(len(len_array)): 
		temp1 = len_array[i]
		temp2 = re.findall(r'\d+', content[temp1])
		msg1  = int(temp2[1])
		msg2  = int(temp2[2])
		if msg1 >= shake and msg1 < size_len:
			result_arry[msg1 - shake, 1] = msg2

with open(file_name1, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
# start1     = [x for x in range(len(content)) if (sensor) in content[x]]
# end1       = [x for x in range(len(content)) if (action) in content[x]]
# size1	   = min(len(start1), len(end1))
# mtrx1	   = np.zeros([size1 - shake, 8], dtype = int)

start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1)

start2     = [x for x in range(len(content)) if (action) in content[x]]
size2	   = len(start2)
mtrx2	   = np.zeros([size2 - shake, 2], dtype = int)

clctData(size2, start2, mtrx2)

chain1 = []
chain2 = []

for i in range(len(mtrx1)) :
		chain1.append((mtrx1[i,1]))
for i in range(len(mtrx2)) :
		chain2.append((mtrx2[i,1]))

with open(file_name2, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
# start1     = [x for x in range(len(content)) if (sensor) in content[x]]
# end1       = [x for x in range(len(content)) if (action) in content[x]]
# size1	   = min(len(start1), len(end1))
# mtrx1	   = np.zeros([size1 - shake, 8], dtype = int)

start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 2], dtype = int)

clctData(size1, start1, mtrx1)

start2     = [x for x in range(len(content)) if (action) in content[x]]
size2	   = len(start2)
mtrx2	   = np.zeros([size2 - shake, 2], dtype = int)

clctData(size2, start2, mtrx2)

chain3 = []
chain4 = []

for i in range(len(mtrx1)) :
		chain3.append((mtrx1[i,1]))
for i in range(len(mtrx2)) :
		chain4.append((mtrx2[i,1]))

print(np.mean(chain1))
# print(np.std(chain1))
print(np.mean(chain2))
# print(np.std(chain2))
print(np.mean(chain3))
print(np.mean(chain4))

chain1_three = [chain1, chain3]

labels      = (["TIDE", "RCLC"])
colors      = [(120/255.,214/255.,201/255.), (82/255.,159/255.,101/255.)]

bplot_4     = plt.boxplot(chain1_three, patch_artist=True, labels=labels, showfliers=True, medianprops={'color':'black', 'linewidth':'1.2'}, positions=(1, 1.25), widths=0.2)
for patch, color in zip(bplot_4['boxes'], colors):
				patch.set_facecolor(color)
				patch.set(linewidth=0.5)

x_position  = [1]
x_posn_fmt  = ["$1$"]

plt.xticks([i + 0.35 / 2 for i in x_position], x_posn_fmt, fontsize=14)
plt.yticks(fontsize=10)
plt.ylabel('Latency [$ms$]', fontsize=13)
plt.grid(linestyle="--", alpha=0.3)  #绘制图中虚线 透明度0.3
plt.legend(bplot_4['boxes'],labels,loc='upper left', fontsize=12)  #绘制表示框，右下角绘制
#plt.savefig(fname="pic.png",figsize=[10,10])

plt.show()