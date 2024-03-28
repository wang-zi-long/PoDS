import re
#import packaging
import matplotlib.pyplot as plt
from brokenaxes import brokenaxes
import pandas as pd
import numpy as np
import random
import matplotlib.pyplot as plt

file_name1 = "/home/neu/Desktop/micro-ROS/microros_767/result_log/Test/test20.log"

sensor = "|1111|"

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
			temp3 = re.findall(r'\d+', content[temp1 + 1])
			msg3  = int(temp3[1])
			result_arry[msg1 - shake, 2] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 2])
			msg3  = int(temp3[0])
			result_arry[msg1 - shake, 3] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 3])
			msg3  = int(temp3[0])
			result_arry[msg1 - shake, 4] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 4])
			msg3  = int(temp3[0])
			result_arry[msg1 - shake, 5] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 5])
			msg3  = int(temp3[0])
			result_arry[msg1 - shake, 6] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 6])
			msg3  = int(temp3[0])
			result_arry[msg1 - shake, 7] = msg3
			temp3 = re.findall(r'\d+', content[temp1 + 7])
			msg3  = int(temp3[1])
			result_arry[msg1 - shake, 8] = msg3

# def clctData (size_len, len_array, result_arry):
# 	global content
# 	for i in range(len(len_array)): 
# 		temp1 = len_array[i]
# 		temp2 = re.findall(r'\d+', content[temp1])
# 		msg1  = int(temp2[1])
# 		msg2  = int(temp2[2])
# 		if msg1 >= shake and msg1 < size_len:
# 			temp3 = re.findall(r'\d+', content[temp1 + 1])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 1] = msg3
# 			temp3 = re.findall(r'\d+', content[temp1 + 2])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 2] = msg3
# 			temp3 = re.findall(r'\d+', content[temp1 + 3])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 3] = msg3
# 			temp3 = re.findall(r'\d+', content[temp1 + 4])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 4] = msg3
# 			temp3 = re.findall(r'\d+', content[temp1 + 5])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 5] = msg3
# 			temp3 = re.findall(r'\d+', content[temp1 + 6])
# 			msg3  = int(temp3[0])
# 			result_arry[msg1 - shake, 6] = msg3

with open(file_name1, 'r', encoding='utf-8') as f:
		content = f.readlines()
	
# start1     = [x for x in range(len(content)) if (sensor) in content[x]]
# end1       = [x for x in range(len(content)) if (action) in content[x]]
# size1	   = min(len(start1), len(end1))
# mtrx1	   = np.zeros([size1 - shake, 8], dtype = int)

start1     = [x for x in range(len(content)) if (sensor) in content[x]]
size1	   = len(start1)
mtrx1	   = np.zeros([size1 - shake, 9], dtype = int)

clctData(size1, start1, mtrx1)

chain  = []
chain1 = []
chain2 = []
chain3 = []
chain4 = []
chain5 = []
chain6 = []

for i in range(len(mtrx1)) :
		if mtrx1[i,1] != 0 and mtrx1[i,1] > 5000 :
			chain.append(mtrx1[i,1])
			chain1.append((mtrx1[i,3]-mtrx1[i,2]))
			chain2.append((mtrx1[i,4]-mtrx1[i,3]))
			chain3.append((mtrx1[i,5]-mtrx1[i,4]))
			if((mtrx1[i,6]-mtrx1[i,5]) > 0) :
				chain4.append((mtrx1[i,6]-mtrx1[i,5]))
			chain5.append((mtrx1[i,7]-mtrx1[i,6]))
			chain6.append((mtrx1[i,8]-mtrx1[i,7]))

# for i in range(len(mtrx1)) :
# 		if mtrx1[i,1] != 0 and mtrx1[i,6] != 0 :
# 			chain1.append((mtrx1[i,1]))
# 			chain2.append((mtrx1[i,2]))
# 			chain3.append((mtrx1[i,3]))
# 			chain4.append((mtrx1[i,4]))
# 			chain5.append((mtrx1[i,5]))
# 			chain6.append((mtrx1[i,6]))

print(np.mean(chain))
print(np.mean(chain1) + np.mean(chain2) + np.mean(chain3) + np.mean(chain4) + np.mean(chain5) + np.mean(chain6))
print("-------------")
print(np.mean(chain1))
print(np.mean(chain2))
print(np.mean(chain3))
print(np.mean(chain4))
print(np.mean(chain5))
print(np.mean(chain6))
print("-------------")
print(np.std(chain1))
print(np.std(chain2))
print(np.std(chain3))
print(np.std(chain4))
print(np.std(chain5))
print(np.std(chain6))