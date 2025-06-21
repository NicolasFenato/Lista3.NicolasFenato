import "dart:io";

void adicionarLista(List<String> lista,  String item){
  lista.add(item);
}

void salvarListaEmArquivo (List<String> lista) async{
  final arqLista = File("/home/nicfenato/repos/Lista3.NicolasFenato/exercicio3/minhas_compras.txt");
  final sink = arqLista.openWrite();

  sink.writeln("Lista de compras:\n--------------------------");

  for(String item in lista){
    try{
      sink.writeln(item);
    }catch(e){
      print("Erro ao salvar item.");
      exit(1);
    }
  
  }

   sink.writeln("--------------------------");
   await sink.close();

}
void main(){
  
  List<String> listaDeCompras = [];
  String item;
  int cont = 0;

  while(true){
    cont++;
    print("Insira o item $cont ( se tiver acabado digite 'fim' ) : ");
    item = stdin.readLineSync()!;

    if(item == "fim"){
      cont--;
      break;
    }else{
      adicionarLista(listaDeCompras, item);
    }

  }
  salvarListaEmArquivo(listaDeCompras);
  print("Lista de compras com $cont item(ns) em ""minhas_compras.txt"" com sucesso !");

}