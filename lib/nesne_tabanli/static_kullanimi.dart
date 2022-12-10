import 'package:dart_dersleri/nesne_tabanli/a_sinifi.dart';

void main() {
  var a = ASinifi();

  //standart kullanım
  print(a.degisken);
  a.metod();

  //sanal nesne ya da isimsiz nesne
  print(ASinifi().degisken); //1. sanal nesne
  ASinifi().metod(); //2. sanal nesne

  //yukarıdaki kadar kullanışsız değil
  //print(ASinifi.degisken); //1. sanal nesne
  //ASinifi.metod(); //2. sanal nesne
}
