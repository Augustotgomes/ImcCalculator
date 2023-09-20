class Pessoa {
  String _name = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _imc = 0.0;
  


  void setName(String name) {
    _name = name;
  }

   void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

 
  String getName(){
    return _name;
  }

  double getPeso(){
    return _peso;
  }

  double getAltura(){
    return _altura;
  }

  double getImc(){
    calculaImc();
    return _imc;
  }

  Pessoa(String name, double altura, double peso){
    _name = name;
    _peso = peso;
    _altura = altura;
  }

  double calculaImc() {
    _imc = _peso / (_altura * _altura);
    return _imc.isNaN ? 0 : _imc;
  }

  String getResultadoImc(){
    getImc();

    String imcString = _imc.toStringAsFixed(2);

    if (_imc <= 18.5 ) {
      return "Seu IMC é $imcString, e você está Abaixo do normal";
    } else if(_imc <= 24.9) {
       return "Seu IMC é $imcString, e você está dentro do normal";
    } else if (_imc <= 29.9){
       return "Seu IMC é $imcString, e você está com Sobrepeso";
    } else if (_imc <= 34.9){
       return "Seu IMC é $imcString, e você está com Obesidade grau I";
    } else if (_imc <= 39.9){
       return "Seu IMC é $imcString, e você está com Obesidade grau II";
    } else if (_imc >= 40){
       return "Seu IMC é $imcString, e você está com Obesidade grau III";
    } 
    return "não foi possível calcular o IMC";
  }

  

}