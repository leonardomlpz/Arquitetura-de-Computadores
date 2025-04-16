    main:
        ji inicio
        sub r0, r0
        ebreak
    inicio:
        sub r0, r0; r0 = 0
        not r1, r0; r1 = 1
        sub r3, r3
        sub r2, r2 ;; 6 inst

        addi 7
        addi 7
        addi 7
        addi 5
        add r2, r0 == 26; endereco para o salto condicional

        addi 7
        addi 7
        addi 7; r0 = FINAL DAS INSTR
        addi 7
        addi 3; r0 == FINAL DAS INSTR = 57
        add r3, r0; r3 == endereco para posicionar os vetores

        ;preparando para preencher o valor do vetor de tras pra frente
        sub r0, r0; r0 = 0
        addi 7
        addi 7
        addi 4; r0 = 18 -> ultimo elemento do vetor ;; 10 instr / 21

    loop_A:
        st r3, r0; A[r3] = r0
        addi -2
        add r3, r1; anda +1 na pos do vetor
        st r3, r0; B[r3] = r0 - 2
        brzr r0, r2; quando r0 == 0, pula pra r2 (r2 == end loop_b)
        ji loop_A

        addi 7
        add r2, r0; atualiza endereco r2 para sair do loop b
        addi 3
        add r3, r0; r3 = 10 (vai para o comeco do B)
        addi 7
        addi 3; r0 == 20 

    loop_B:
        addi -1 
        st r3, r0; B[r3] = r0 - 2
        add r3, r1; anda +1 na pos do vetor
        addi -1
        brzr r0, r2; quando r0 == 0, pula pra r2 (r2 == end saida)
        ji loop_B

    saida_r2:
        ;R0-CONT R1-END.ST R2-SOMA/CONT R3-END.LD

        add r0, r3; CARREGA VALOR APOS A SAIDA
        addi 1; INICIO DO VETOR R

        ;addi até r1 chegar no end do R
        sub r1, r1
        add r1, r0;

        addi -1; VOLTA PARA O FINAL DO VETOR AB

    soma_vet:
        sub r2, r2; zera r2
        ld r3, r0; load A[i]
        add r2, r3; r2 = r2 + r3 "pega o primeiro elem" ;; 45
        addi 7;
        addi 3; soma 10 na posicao do vetor
        ld r3, r0; load B[i]
        add r2, r3; r2 = soma dos vetores
        addi -7;
        addi -2; volta 9 posicoes no vetor//corrige a posicao pro vetor A[i+1]
        ji continuacao
    loop_parcial1:
        ji soma_vet
    continuacao:
        st r1, r2; guarda a soma em r1
        sub r2, r2
        not r2, r2
        add r1, r2; soma 1

        add r2, r2; r2 = 2
        brzr r0, r2; salta para o inicio
        ji loop_parcial ;; 60

                                            ;deixa r0 == inicio do vet A soma e pula 10, depois pula um no final
                                            ;r2 guarda a soma
                                            ;r3 end que recebe a soma == vetor R
                                            ;r1 end de R
