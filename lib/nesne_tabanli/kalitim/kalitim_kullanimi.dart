import 'package:dart_dersleri/nesne_tabanli/kalitim/ev.dart';
import 'package:dart_dersleri/nesne_tabanli/kalitim/saray.dart';
import 'package:dart_dersleri/nesne_tabanli/kalitim/villa.dart';

void main() {
  var topkapiSarayi = Saray(3, 300);
  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  var bogazVilla = Villa(true, 40);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  //type casting , tip kontrolü

  if (topkapiSarayi is Saray) {
    print("Saraydır");
  } else {
    print("Saray değildir");
  }

  //Downcasting
  var ev = Ev(5);
  var saray = ev as Saray;

  //Upcasting
  var s = Saray(3, 100);
  Ev e = s;
}
