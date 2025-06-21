import "dart:convert";
import "dart:io";

void lerConfiguracoes(String nome) async{   // A função recebe o nome do arquivo .txt
  File arquivo = File(nome);                // O arquivo é aberto na variável 'arquivo'
  //Se o arquivo existir, 
  if(await arquivo.exists()){
    final lista = arquivo.openRead().transform(utf8.decoder).transform(LineSplitter()); 
    // cria uma 'stream' com os bytes lidos do arquivo,
    // converte os bytes em Strings,
    // corta as linhas.
    
    print("Configurações encontradas:");
    await for(var linha in lista){
      print(linha);
    }
  // Se o arquivo não existir,
  }else{
    print("Erro: O arquivo ""config.txt"" não existe."); // imprime a mensagem de erro.
  }
}

void main(){
  
  lerConfiguracoes("config.txt");

}