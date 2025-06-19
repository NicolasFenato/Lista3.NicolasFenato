import "dart:io";

void exibirTabuada(int num){  // Recebe um número inteiro como parâmetro.
  print("Tabuada do $num:");  // Imprime o enunciado.
  for(int i = 1; i <= 10; i++){ 
    int resultado = i * num;
    print("$num x $i = $resultado");
  }
  /* A cada loop, o índice i é multiplicado pelo parâmetro e o resultado é
  armazenado na variável 'resultado'. Além disso, são usadas as variáveis
  'num', 'i' e 'resultado' para imprimir a tabuada formatada. */
}

void main(){
  
  int num;
  print("Digite um número para ver a tabuada: ");

  num = int.parse(stdin.readLineSync()!);
  exibirTabuada(num);
}