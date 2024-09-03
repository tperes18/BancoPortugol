programa {
  funcao inicio() {
    real saldo = 0, saque = 0, deposito = 0
    caracter enter
    inteiro opcao
    cadeia senha, password = "bob"
    escreva("Digite a senha: ")
    leia(senha)
    enquanto(senha != password){
      limpa()
      escreva("Senha incorreta, tente novamente\n")
      escreva("Digite a senha: ")
      leia(senha)
    }
    
    enquanto(opcao != 0){
      limpa()
      escreva("| 1 - Saldo\n")
      escreva("| 2 - Saque\n")
      escreva("| 3 - Depósito\n")
      escreva("| 4 - Extrato\n")
      escreva("| 0 - Sair\n")
      escreva("|\n")
      escreva("| ")
      leia(opcao)
      enquanto(opcao != 0 e opcao != 1 e opcao != 2 e opcao != 3 e opcao != 4){
        limpa()
        escreva("| Opção inválida, tente novamente\n")
        escreva("| 1 - Saldo\n")
        escreva("| 2 - Saque\n")
        escreva("| 3 - Depósito\n")
        escreva("| 4 - Extrato\n")
        escreva("| 0 - Sair\n")
        escreva("|\n")
        escreva("| ")
        leia(opcao)
      }
    limpa()
    escolha(opcao){
      caso 1:
        escreva("Aperte 0 para voltar ao menu\n")
        escreva("Digite a senha: ")
        leia(senha)
        se(senha == "0"){

        }
        senao{
          enquanto(senha != password e senha != "0"){
            limpa()
            escreva("Aperte 0 para voltar ao menu\n")
            escreva("Senha incorreta, tente novamente\n")
            escreva("Digite a senha: ")
            leia(senha)
          }
        }
        se(senha == password){
          limpa()
          escreva("| Saldo = R$" + saldo + "\n")
          escreva("| Aperte enter para continuar")
        leia(enter)
        }
        senao se(senha == "0"){

        }
      pare
      caso 2:
        escreva("Aperte 0 para voltar ao menu\n")
        escreva("Digite a senha: ")
        leia(senha)
        se(senha == "0"){

        }
        senao{
          enquanto(senha != password e senha != "0"){
            limpa()
            escreva("Aperte 0 para voltar ao menu\n")
            escreva("Senha incorreta, tente novamente\n")
            escreva("Digite a senha: ")
            leia(senha)
          }
        }
        se(senha == password){
          se(saldo == 0){
            limpa()
            escreva("| Você não tem saldo suficiente para sacar\n")
            escreva("| Aperte enter para continuar")
            leia(enter)
          }
          senao{
          escreva("| Digite o valor para sacar: ")
          leia(saque)
          enquanto(saque < 0 ou saque > saldo){
            limpa()
            escreva("| Valor inválido, tente novamente\n")
            escreva("| Digite o valor para sacar: ")
            leia(saque)
          }
            saldo = saldo - saque
            limpa()
            escreva("| Saque realizado com sucesso!\n")
            escreva("| Aperte enter para continuar")
            leia(enter)
          }
        }
        senao se(senha == "0"){

        }
      pare
      caso 3:
        escreva("Aperte 0 para voltar ao menu\n")
        escreva("Digite a senha: ")
        leia(senha)
        se(senha == "0"){

        }
        senao{
          enquanto(senha != password e senha != "0"){
            limpa()
            escreva("Aperte 0 para voltar ao menu\n")
            escreva("Senha incorreta, tente novamente\n")
            escreva("Digite a senha: ")
            leia(senha)
          }
        }
        se(senha == password){
          limpa()
          escreva("| Digite o valor para depositar: ")
          leia(deposito)
          enquanto(deposito < 0){
            limpa()
            escreva("| Valor inválido, tente novamente\n")
            escreva("| Digite o valor para depositar: ")
            leia(deposito)
          }
          saldo = saldo + deposito
            limpa()
            escreva("| Depósito realizado com sucesso!\n")
            escreva("| Aperte enter para continuar")
            leia(enter)
        }
        senao se(senha == "0"){

        }
      pare
      caso 4:
        escreva("Aperte 0 para voltar ao menu\n")
        escreva("Digite a senha: ")
        leia(senha)
        se(senha == "0"){

        }
        senao{
          enquanto(senha != password e senha != "0"){
            limpa()
            escreva("Aperte 0 para voltar ao menu\n")
            escreva("Senha incorreta, tente novamente\n")
            escreva("Digite a senha: ")
            leia(senha)
          }
        }
        se(senha == password){
          limpa()
          escreva("| DEPÓSITO -------- R$" + deposito + "\n")
          escreva("| SAQUE ----------- R$" + saque + "\n")
          escreva("| Aperte enter para continuar")
          leia(enter)
        }
        senao se(senha == "0"){

        }
      pare
      }
    }
  }
}
