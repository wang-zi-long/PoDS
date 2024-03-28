import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/Test/test13.log"

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

# start2     = [x for x in range(len(content)) if (action) in content[x]]
# size2	   = len(start2)
# mtrx2	   = np.zeros([size2 - shake, 2], dtype = int)

# clctData(size2, start2, mtrx2)

chain1 = []
chain2 = []

for i in range(len(mtrx1)) :
		chain1.append((mtrx1[i,1]))
# for i in range(len(mtrx2)) :
# 		chain2.append((mtrx2[i,1]))


print(np.mean(chain1))
print(np.std(chain1))
# print(np.mean(chain2))
# print(np.std(chain2))