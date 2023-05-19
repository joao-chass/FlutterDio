
import 'dart:convert';
import 'dart:io';
import 'package:meu_app/CalcularIMC.dart';

void main(List<String> arguments) {
  var Imc = new CalcularIMC();
  print("Qual o seu Nome ?:");
  var nome = stdin.readLineSync(encoding: utf8);
  Imc.setNome(nome.toString());

  print("Qual o seu Peso ?:");
  var peso = stdin.readLineSync(encoding: utf8);
  Imc.setPeso(peso.toString());

  print("Qual a sua altura ?:");
  var altura = stdin.readLineSync(encoding: utf8);
  Imc.setAltura(altura.toString());

  print(Imc.ResultadoIMC());
}