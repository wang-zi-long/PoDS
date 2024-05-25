#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ARRAY_LENGTH 500

// 生成随机数组
void generate_random_array(int probability, int array[]) {
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
        if (rand() % 100 < probability) {
            array[i] = 1; // 成功
        } else {
            array[i] = 0; // 失败
        }
    }
}

int main() {
    int random_array_20[ARRAY_LENGTH];
    int random_array_40[ARRAY_LENGTH];
    int random_array_60[ARRAY_LENGTH];
    int random_array_80[ARRAY_LENGTH];

    // 设置随机种子
    srand(time(NULL));

    // 20% 的成功概率
    generate_random_array(20, random_array_20);

    // 40% 的成功概率
    generate_random_array(40, random_array_40);

    // 60% 的成功概率
    generate_random_array(60, random_array_60);

    // 80% 的成功概率
    generate_random_array(80, random_array_80);

    // 打印随机数组
    printf("20%% 成功概率随机数组:\n");
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
        printf("%d,", random_array_20[i]);
        if((i + 1) % 50 == 0){
            printf("\n");
        }else{
            printf(" ");
        }
    }
    printf("\n");

    printf("40%% 成功概率随机数组:\n");
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
        printf("%d,", random_array_40[i]);
        if((i + 1) % 50 == 0){
            printf("\n");
        }else{
            printf(" ");
        }
    }
    printf("\n");

    printf("60%% 成功概率随机数组:\n");
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
        printf("%d,", random_array_60[i]);
        if((i + 1) % 50 == 0){
            printf("\n");
        }else{
            printf(" ");
        }
    }
    printf("\n");

    printf("80%% 成功概率随机数组:\n");
    for (int i = 0; i < ARRAY_LENGTH; ++i) {
        printf("%d,", random_array_80[i]);
        if((i + 1) % 50 == 0){
            printf("\n");
        }else{
            printf(" ");
        }
    }
    printf("\n");

    return 0;
}
