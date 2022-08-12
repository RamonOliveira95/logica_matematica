import 'dart:io';

void main() {
  var isRunning = true; //Criado para o laço do while
  int resultadoForTres = 0;
  int resultadoForCinco = 0;

  while (isRunning) {
    print("\x1B[2J\x1B[0;0H"); //Código utilizado para limpar o terminal
    stdout.write("Digite um número maior que 0: ");
    String input = stdin.readLineSync().toString();
    int valor = int.parse(input); //Convertendo o valor digitado para um inteiro
    print('');

    if (valor <= 0) {
      print("\x1B[2J\x1B[0;0H");
      print("Digite um número positivo");
      print("pressione ENTER para voltar ao início e tentar novamente");
      valor = 1;
      stdin.readLineSync();
    } else if (valor > 0) {
      for(int i = 3; i < valor; i += 3){
        resultadoForTres += i;
        print(i);
      }
      print("A soma total é: $resultadoForTres");

      for(int i = 5; i < valor; i += 5){
        resultadoForCinco += i;
        print(i);
      }
      print("A soma total é: $resultadoForCinco");
      int resultadoFinal = resultadoForCinco + resultadoForTres;
      print("$resultadoForTres + $resultadoForCinco = $resultadoFinal");
      
      isRunning = false;
    }
  }
}