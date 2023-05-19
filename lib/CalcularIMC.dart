class CalcularIMC {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  
  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(String peso) {
    var convert = double.parse(peso);
    _peso = convert;
  }

  void setAltura(String altura) {
    var convert = double.parse(altura);
    _altura = convert;
  }

  String ResultadoIMC() {
    var resultado = _peso / (_altura * _altura);
    var convert = (resultado * 10000).toInt();
    var clasificacao = "";

  

  if(convert < 16) {
    clasificacao = "Magreza grave";
  } else if (convert <= 16 || convert < 17) {
    clasificacao = "Magreza Moderada";
  } else {
     clasificacao = "Obesidade Grau 3 (morbida)";
  }

    return "Olá ${_nome}, seu IMC é ${convert.toString()}, a sua classificação é ${clasificacao}";
  }

}
