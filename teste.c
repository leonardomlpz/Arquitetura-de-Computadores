#include <stdio.h>
//apenas para comparação com o codigo em assembly

int main(){
    int A[10] = {0,2,4,6,8,10,12,14,16,18};
    int B[10] = {1,3,5,7,9,11,13,15,17,19};
    int C[10];

    for(int i=0; i < 10; i++)
        C[i] = 0;
    
    //contador para iteracoes em i
    //contador para saltos na memoria

    for (int i = 0; i < 10; i++)
        C[i] = A[i] + B[i];
}