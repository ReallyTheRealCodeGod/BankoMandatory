//
// Created by peter on 25-05-2021.
//

#include <stdlib.h>
#include "uniqueIntArrayGeneration.h"

//returns an array of integers, where every decimal in the array, has a value between min and max.
//it has checking algorithm, that insures every value is unique
int* uniqueIntArrayGenerator(int min, int max, int size) {

    int *new_arr = malloc(sizeof(int) * size);

    //Hvis jeg beslutter at jeg vil lave en array, med alle værdier jeg skal bruge
    //så skal jeg lave et tjek for om jeg har alle værdier i henholdsvis alle columns


    for (int i = 0; i < size; i++) {
        int num = (rand() % (max - min + 1)) + min;
        new_arr[i] = num;
        for(int j = 0; j < i; j++)
        {
            if(new_arr[j] == num) {
                i--;
            }
        }
    }
    return new_arr;


}
