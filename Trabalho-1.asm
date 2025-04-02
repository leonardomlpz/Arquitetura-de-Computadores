        .text
        .data
    A:  .word 0,2,4,6,8,10,12,14,16,18
    B:  .word 1,3,5,7,9,11,13,15,17,19
    R:  .word 0,0,0,0,0,0,0,0,0,0

        .globl main
    main:
        #ver se posso fazer sub x0 x0 para  limpar reg
        addi x0, 0
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
