import 'package:imc_calculator/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 50);
    expect(pessoa.getResultadoImc(), "Seu IMC é 15.78, e você está Abaixo do normal");
  });

  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 70);
    expect(pessoa.getResultadoImc(), "Seu IMC é 22.09, e você está dentro do normal");
  });

  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 86);
    expect(pessoa.getResultadoImc(), "Seu IMC é 27.14, e você está com Sobrepeso");
  });

  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 95);
    expect(pessoa.getResultadoImc(), "Seu IMC é 29.98, e você está com Obesidade grau I");
  });

  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 115);
    expect(pessoa.getResultadoImc(), "Seu IMC é 36.30, e você está com Obesidade grau II");
  });

  test('IMC abaixo do normal', () {
     var pessoa = Pessoa('nome', 1.78, 130);
    expect(pessoa.getResultadoImc(), "Seu IMC é 41.03, e você está com Obesidade grau III");
  });
}
