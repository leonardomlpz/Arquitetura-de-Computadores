    main:

        sub r1, r1 ; r1 = 0
        not r1, r1 ; r1 = 1
        addi 7 ; r0 == 7
        addi 3 ; r0 == 7+3=10
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

        ebreak