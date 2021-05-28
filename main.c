#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "uniqueIntArrayGeneration.h" //custom header file, to show you I can du it


typedef struct bankoPlate{

    int bankoPlateIDNumber;
    int *bankoFieldsOnPlate;

}bankoPlate;

//banko plate generator, that returns a bankoPlate
//insert ID
bankoPlate makeBankoPlate(int ID, int sizeOfArray, int rowAmount);

//prints bankoPlate given an array holding the bankoPlate numbers,
//the size/length of the array and the amount of rows on the plate.
void printBankoPlate(int *arrPointer, int size, int numberOfRows);

void newArr(int numberOfBankoPlates, int sizeBankoPlateArray, int rowAmount, int rowLength,
            struct bankoPlate *allBankoPlates);

int main() {

    int numberOfBankoPlates = 1; // total amount of bankoplates printed to the terminal
    int sizeBankoPlateArray = 27; // total number of digits on each bankoplates
    int rowAmount = 3; //number of rows on the bankoplates
    int rowLength = 0; //the length of each row
    srand(time(NULL));//makes a new seed to the random function

    //calculates the length of each individual row on the banko plate
    rowLength = sizeBankoPlateArray/rowAmount;

    //declares the number of banko plates that the user wants
    struct bankoPlate allBankoPlates[numberOfBankoPlates];

    //initializes the array according to user input
    newArr(numberOfBankoPlates, sizeBankoPlateArray, rowAmount, rowLength, allBankoPlates);

    return 0;
}

void newArr(int numberOfBankoPlates, int sizeBankoPlateArray, int rowAmount, int rowLength,
            struct bankoPlate *allBankoPlates) {

//    int arr[rowAmount][rowLength];
//
//    for(int test = 0; test < rowAmount; test++)
//    {
//        for(int rowindex = 0; rowindex < rowLength; rowindex++)
//        {
//            arr[test][rowindex] = NULL;
//        }
//    }

    for(int i = 0; i < numberOfBankoPlates; i++)
    {
        allBankoPlates[i] = makeBankoPlate(i + 1, sizeBankoPlateArray, rowAmount);
        printf("banko plate no.%d \n", allBankoPlates[i].bankoPlateIDNumber);

        printBankoPlate(allBankoPlates[i].bankoFieldsOnPlate, sizeBankoPlateArray, 3);

    }
}

//abstracts the indexing of the array
//returns the value, stored at the index
int getIndexInArray(int column, int row) {

    //the start values(index) for each row
    int rowOne = 0;
    int rowTwo = 9;
    int rowThree = 18;

    //subtract column by 1, to get the correct number to add
    if(row == 1){
        rowOne += (column - 1);
        return rowOne;
    }
    if(row == 2){
        rowTwo += (column - 1);
        return rowTwo;
    }
    if(row == 3){
        rowThree += (column - 1);
        return rowThree;
    }

    return -1;

}

//takes an ID, an int to alocate the size of the array and the
bankoPlate makeBankoPlate(int ID, int lengthOfBankoPlate, int rowAmount) {

    //clears previous array of numbers, so that a new one can be added
    int *arr = malloc(sizeof(int) * lengthOfBankoPlate);

    for(int rowindex = 0; rowindex < lengthOfBankoPlate; rowindex++)
    {
        arr[rowindex] = -1;
    }


// how to implement the getIndexInArray function when assigning, arr[getIndexInArray(column,row)] = 1;

//assign each row 5 numbers, in a random place on the row
 for(int i = 1; i <= 3; i++) {


        int *arrRandomIndex;
        arrRandomIndex = uniqueIntArrayGenerator(1,9, 5);

       // printf("%d", uniqueIntArrayGenerator(1,9, 5));



     for(int j = 0; j < 5; j++ ) {

         arr[getIndexInArray(arrRandomIndex[j],i)] = 1;

     }

     free(arrRandomIndex);
     arrRandomIndex = NULL;
 }

        for (int iColumn = 1; iColumn <= 9; iColumn++) { //goes through the columns



            for (int iRow = 1; iRow <= 3; iRow++) { //goes through the rows in the column

                int isItLessThanOne = 0; //flag that is used to check if the column has atleast 1 number

                if (arr[getIndexInArray(iColumn, iRow)] != -1) { //conditional statement that helps to keep a record on how many fields in the column that has a value
                    isItLessThanOne++;
                }
                if (isItLessThanOne == 0 && iRow == 3) // if the amount of numbers in the fields in the column is less than one (that it is zero),
                {                                  // and that it has been through all rows in the current column, then find a field in the other columns from the same row, that it can adopt


                    for (int jColumn = 1; jColumn <= 9; jColumn++) { // go through every column on the banko plate array

                        int moreThanOne = 0; //value that is used to check if the column has a field to spare in the same row, that the column that is missing a digit is on

                        for (int jRow = 1; jRow <= 3; jRow++) { // go through each row in the column


                            if (arr[getIndexInArray(jColumn, jRow)] !=
                                -1) { // conditional statement, that keeps a track of how many fields that the column has
                                moreThanOne++;
                            }

                            if (moreThanOne > 1 && arr[getIndexInArray(jColumn, iRow)] !=
                                                   -1) { //if it has more than one field in the column, and it its value in the row is not null.
                                // !Be aware that it only checks the last row in every column. iRow

                                arr[getIndexInArray(iColumn, iRow)] = arr[getIndexInArray(jColumn, iRow)]; // assign the last row in the column that is missing a field, from the column that has more than one field assigned
                                arr[getIndexInArray(jColumn, iRow)] = -1; // set the column that changed column to NULL
                                goto test;

                            }


                        }

                    }

                }


            }

            test:
            printf("");

        }


    // values that is incremented by 10, for each column. It is
    // used to apply the correct range of numbers to the array
    int rowNumberRanges[3][2] = {
            {1,3},
            {4,6},
            {7,9},
    };

    for (int jColumn = 1; jColumn <= 9; jColumn++) { // go through every column on the banko plate array

        for (int jRow = 1; jRow <= 3; jRow++) { // go through each row in the column

                     if(arr[getIndexInArray(jColumn, jRow)] != -1)
                     {

                          int *test = uniqueIntArrayGenerator(rowNumberRanges[jRow-1][0], rowNumberRanges[jRow-1][1],1);

                         arr[getIndexInArray(jColumn,jRow)] = test[0];
                     }

            }

            //iterate over the values, and add 10 to every index. It makes it ready to be applied to the fields in the correct order and ranges
            for(int i = 0; i < 3; i++)
            {
                for(int j = 0; j < 2; j++)
                {
                    rowNumberRanges[i][j] += 10;
                }
            }

        }

    bankoPlate newBankoPlate;
    newBankoPlate.bankoPlateIDNumber = ID;
    
    newBankoPlate.bankoFieldsOnPlate =  arr; //uniqueIntArrayGenerator(1, 90, lengthOfBankoPlate);

    return newBankoPlate;
}

void printBankoPlate(int *arrPointer, int size, int numberOfRows){

    int *serialMonitorArr = arrPointer;
    int amountOfFieldsInColumn = size/numberOfRows;

    for(int i = 1;  i <= size; i++) {
        if(*arrPointer > amountOfFieldsInColumn){
            printf("|%d", *arrPointer);
        }else if(*arrPointer == -1) {
            printf("|  ");
        }else{
            printf("| %d", *arrPointer);
        }
        arrPointer++;
        if(i%amountOfFieldsInColumn==0){
            printf("|\n");
            for(int k = 0; k < amountOfFieldsInColumn; k++){
                printf("|__");
            }
            printf("|\n");
        }
    }

    puts("\n");

    //print out the array, in a easy format for the arduino Serial Monitor to handle with a delimiter
    puts("this is the line that is put into the Arduino Serial Monitor");
    for(int i = 0; i < size; i++)
    {

        if(serialMonitorArr[i] == -1) {
            printf("-1");
        }else{
            printf("%d", serialMonitorArr[i]);
        }
        if(i < size-1){
            printf(",");
        }
    }
    puts("");

    free(arrPointer);
    arrPointer = NULL;
}

