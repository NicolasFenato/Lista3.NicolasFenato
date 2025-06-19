import "dart:io";
double calcMedia(double nota1, double nota2, double nota3){
  bool ver1 = nota1 >= 0 && nota1 <= 10;
  bool ver2 = nota2 >= 0 && nota2 <= 10;
  bool ver3 = nota3 >= 0 && nota3 <= 10;
   if(ver1 && ver2 && ver3){
    return (nota1 + nota2 + nota3) / 3;
   }else{
    return -1.0;
   }
}

void main(){

  double? nota1, nota2, nota3;

  print("Digite a primeira nota: ");
  nota1 = double.parse(stdin.readLineSync()!);
  print("Digite a segunda nota: ");
  nota2 = double.parse(stdin.readLineSync()!);
  print("Digite a terceira nota: ");
  nota3 = double.parse(stdin.readLineSync()!);

  double media = calcMedia(nota1, nota2, nota3);
  if(media > 0){
    String mediaStr = media.toStringAsFixed(2);
    print("Média: $mediaStr");
  }else{
    print("Erro: Nota inválida inserida. As notas devem estar entre 0 e 10.");
  }
}