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
        addi 7

        addi 7
        add r2, r0; R2 == 35 endereco para o salto condicional ;;12;;

        addi 4
        addi 7
        addi 7
        addi 7
        addi 7


        addi 7
        addi 7
        addi 7
        addi 7
        addi 7
        addi 4; r0 == 106(FIM INST(86) + 20)=(FINAL DO VETOR B)


        ;preparando para preencher o valor do vetor de tras pra frente
        add r3, r0; r3 == endereco para posicionar os vetores 
        sub r0, r0; r0 = 0 ;;22;;
        addi 7
        addi 7
        addi 6; r0 = 20 -> (ultimo elemento do vetor B + 1) ;; 10 instr ;;26;;

    loop_B:
        addi -1 
        st r3, r0; B[r3] = r0 - 2
        sub r3, r1; anda -1 na pos do vetor
        addi -1
        brzr r0, r2; quando r0 == 0, pula pra r2 (r2 == end saida)
        ji loop_B

        ;;SALTO LOOP B

        addi 7
        addi 5
        add r2, r0; end saida atualiza pra saida r2 ;r2 + 13
        addi 6; r0 == 18

    loop_A:
        st r3, r0; A[r3] = r0 ;;38;;
        addi -2
        sub r3, r1; anda <- -1 na pos do vetor
        st r3, r0; B[r3] = r0 - 2
        brzr r0, r2; quando r0 == 0, pula pra r2 (r2 == end loop_b)
        sub r3, r1; anda <- -1 na pos do vetor
        addi -2
        ji loop_A


    saida_r2:
        ;R0-CONT R1-END.ST R2-SOMA/CONT R3-END.LD

        sub r0, r0
        addi -1
        sub r1, r1
        add r1, r0; r1 == -1

        sub r0, r0
        addi 7 ;;46;;

        addi 3; r0 = 10
        st r1, r0;


        addi 7


        addi 3; r0 == 20
        add r3, r0; r3 == r3 + 20
        sub r3, r0; r3 - 20
        sub r0, r0
        add r0, r3; r0 == INICIO VET A ;;;;

    soma_vet:
        sub r2, r2; zera r2 ;;55;;
        ld r3, r0; load A[i]
        add r2, r3; r2 = r2 + r3 "pega o primeiro elem" 
        addi 7;
        addi 3; soma 10 na posicao do vetor
        ld r3, r0; load B[i]
        add r2, r3; r2 = soma dos vetores
        ji continuacao
    loop_parcial2:
        ji soma_vet
    continuacao:
        addi 7
        addi 3
        st r0, r2; guarda a soma em r0
        addi -7;
        addi -7
        addi -5; volta 19 posicoes no vetor//corrige a posicao pro vetor A[i+1]
        ji continuacao2  ;;64;;
    loop_parcial:
        ji loop_parcial2
    continuacao2:
        sub r2, r2
        not r2, r2
        ld r3, r1
        sub r3, r2; r3 -1
        add r2, r2; r2 = 2  ;;70;;
        brzr r3, r2; salta para o inicio
        st r1, r3; guarda i - 1
        ji loop_parcial ;;72;;
