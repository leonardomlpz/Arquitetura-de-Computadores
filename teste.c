#include <stdio.h>
//apenas para comparação com o codigo em assembly

int main(){
    int a[10];
    int b[10];
    int r[10];

    /*int c = 0;

    for (int i = 0; i < 10; i++)
    {
        a[i] = c;
        c = c+2;
    }

    c = 1;
    for (int i = 0; i < 10; i++)
    {
        b[i] = c;
        c = c+2;
    }*/
    //outra ideia
    int c = 0;
    for (int i = 0; i < 10; i++)
    {
        a[i] = c;
        c++;
        b[i] = c;
        c++;
        r[i] = a[i] + b[i];
    }

    for (int i = 0; i < 10; i++)
        printf("%d ", r[i]);
}