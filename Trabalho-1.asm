    main:
        ji inicio
        sub r0, r0
        ebreak
    inicio:
        sub r0, r0; r0 = 0
        not r1, r0; r1 = 1
        sub r3, r3
        sub r2, r2

        addi 7
        addi 7
        addi 7
        addi 7
        add r2, r0; endereco para o salto condicional

        addi 7
        addi 7
        addi 7; r0 = FINAL DAS INSTR
        add r3, r0; r3 == endereco para posicionar os vetores

        ;preparando para preencher o vetor de tras pra frente
        sub r0, r0; r0 = 0
        addi 7
        addi 7
        addi 5; r0 = 19 -> ultimo elemento do vetor

    loop:
        st r3, r0; A[r3] = r0
        addi -1
        add r3, r1; anda +1 na pos do vetor
        st r3, r0; B[r3] = r0 - 1
        brzr r0, r2; quando r0 == 0, pula pra r2
        addi -1
        add r3, r1; anda +1 na pos do vetor
        ji loop

    saida_r2:
        ;R0-CONT R1-END.ST R2-SOMA/CONT R3-END.LD

        sub r0, r0
        add r0, r3; CARREGA VALOR APOS A SAIDA
        addi 1; INICIO DO VETOR R

        ;addi até r1 chegar no end do R
        sub r1, r1
        add r1, r0;

        addi -1; VOLTA PARA O FINAL DO VETOR AB

    seg_loop:
        sub r2, r2; r2 == 0
        ld r3, r0
        add r2, r3; r2 = r2 + r3 "pega o primeiro elem"
        addi -1; decrementa pois o vetor esta alocado ao contrario
        ld r3, r0
        add r2, r3; r2 = soma dos vetores
        ji continuacao
    loop_parcial:
        ji seg_loop
    continuacao:
        st r1, r2; guarda a soma em r1
        sub r2, r2
        not r2, r2
        add r1, r2; soma 1

        add r2, r2; r2 = 2
        brzr r0, r2; salta para o inicio
        ji loop_parcial