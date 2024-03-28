#ifndef PRIORITYQUEUE
#define PRIORITYQUEUE

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include "executor.h"
//Absolute Path
#include "/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/exp.h"

struct ListNode{
    //记录回调对应的优先级
    int priority;
    //记录下次调用时间
    int64_t next_call_time;
    int64_t period;
    //循环指针数组，意味未执行的回调实例的个数最多有EXAMPLE_MAX_NUM个
    void* data[EXAMPLE_MAX_NUM];
    int head, tail;
    rclc_executor_handle_t* handle;
    struct ListNode *next;
};
typedef struct ListNode PQNode;

extern PQNode *TimerList, *ReadyList, *PQNode_Pool;

//静态分配PQNode结点池
void PQ_Init();
//申请一个PQNode结点
PQNode* get_PQNode();
//回收PQNode结点
void put_PQNode(PQNode* p);
//向TimerList中初始化插入Timer
void Timer_Enqueue(rclc_executor_handle_t *temp);
//向ReadyList中插入PQNode结点
void Ready_Enqueue(PQNode* temp);
//检查TimerList中的第一个Timer是否到期
bool Check_TimerList();
//将执行过的Timer结点重新加入TimerList中
void Update_TimerList(PQNode* temp);
//检查ReadyList是否为空
bool Check_ReadyList();
//检查某个回调函数是否已经加入ReadyList中
PQNode* Check_ReadyList2(rclc_executor_handle_t *temp);

#endif