        .text
        .data
    A:  .word 0,2,4,6,8,10,12,14,16,18
    B:  .word 1,3,5,7,9,11,13,15,17,19
    R:  .word 0,0,0,0,0,0,0,0,0,0
    T:  .word 10

        .globl main
    main:

        sub r0, r0 ; r0 = 0
        not r0, r0 ; r0 = 1
        ld r3, T ; r3 = 10 ULTIMO REG
    loop:
        ld r1, A ; r1 = A[i]
        ld r2, B ; r2 = b[i]
        add r1, r2 ; r1 + r2
        st R, r1 ; t[i] = guarda a soma
        add R, r0 ; endereco T + 1
        add A, r0 ; deslocamento do vetor 
        add B, r0 
        sub r3, r0; decrementa contador
        brzr r3, fora ; se r3 == 0 sai
        ji loop ; NAO SEI SE FUNCIONA


        addi t7, 4
        addi
        ld t0, A; t0 = endereço A
        ld t1, B
        ld t2, R
        addi t3, 10; t4 fim do laco

        ld t4, t0; t4 = A[i]
        ld t5, t1; t5 = B[i]
        ld t6, t2; t6 = R[i]

loop:   add t6, t4; 0 + A[i]
        add t6, t5; A[i] + B[i]
        st t2, t6;; armazena soma em R
        add t0, t7;; soma 4 no endereco dos vetores
        add t1, t7
        add t2, t7
