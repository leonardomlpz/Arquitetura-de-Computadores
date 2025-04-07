

    main:
        sub r0, r0; r0 = 0
        not r2, r0; r2 = 1
        addi 7
        addi 2; r0 = 9
        sub r1, r1
        add r1, r0; r1 = 9
        sub r0, r0

        st r3, r0; a[r3] = r0
        addi 1;
        add r3, r2; r3++
        st r3, r0; b[r3] = r0
        sub r1, r2; r1= r1 -1


    main:
        sub r0, r0; r0 = 0
        not r1, r0; r1 = 1
        sub r3, r3
        sub r2, r2
        addi 7
        addi 2; r0 = 9
        add r2,r0; r2 = 9
        sub r0, r0; r0 = 0

    loop:
        st r3, r0; A[r3] = r0
        addi 1
        add r3, r1; anda +1 no vetor
        st r3, r0; B[r3] = r0 + 1
        addi 1
        add r3, r1; anda +1 no vetor
        sub r2, r1
        ;brzr r2,
        ji loop

    fora: