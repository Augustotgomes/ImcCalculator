import 'package:imc_calculator/exceptions/nome_invalido_exception.dart';
import 'package:imc_calculator/models/console_utils.dart';
import 'package:imc_calculator/models/pessoa.dart';

void execute() {
  print("Bem vindo a Calculadora IMC");

  String nome="";
  double altura = 0.0;
  double peso = 0.0;
  do {
    nome = ConsoleUtils.lerStringComTexto("Digite o nome:");
    try {
      if (nome.trim() == "") {
        throw NomeInvalidoException();
      }
    } catch (NomeInvalidoException) {
      print(NomeInvalidoException);
    } 
    
  } while (nome == "");

 
  do {
    altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura: ")!;
    
    if(altura == 0.0) {
      print("Digite uma Altura válida"); 
    } 
    
  } while (altura == 0.0);

  do {
    peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ")!;
    
    if(peso == 0.0) {
      print("Digite um peso válido"); 
    } 
    
  } while (peso == 0.0);
  
  var pessoa = Pessoa(nome, altura, peso);
  
  print(pessoa.getResultadoImc());
 

}