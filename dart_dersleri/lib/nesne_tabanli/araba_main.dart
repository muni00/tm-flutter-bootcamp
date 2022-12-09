import 'package:dart_dersleri/nesne_tabanli/araba.dart';

void main() {
  //Nesne oluşturma
  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);
  //Değer atama
  //bmw.renk = "Mavi";
  //bmw.hiz = 100;
  //bmw.calisiyorMu = true;

  //Değer okuma
  //print("Renk : ${bmw.renk}");
  //print("Hız : ${bmw.hiz}");
  //print("Calışıyor mu : ${bmw.calisiyorMu}");
  //print("*************************");
  //bmw.bilgiAl();
  //bmw.durdur();
  //bmw.bilgiAl();
  //bmw.calistir();
  //bmw.bilgiAl();
  bmw.hizlan(100);
  bmw.bilgiAl();
  bmw.yavasla(25);
  bmw.bilgiAl();
  var sahin = Araba(renk: "Sarı", hiz: 0, calisiyorMu: false);

  //sahin.renk = "Beyaz";
  //sahin.hiz = 0;
  //sahin.calisiyorMu = false;

  //print("Renk : ${sahin.renk}");
  //print("Hız : ${sahin.hiz}");
  //print("Calışıyor mu : ${sahin.calisiyorMu}");
  sahin.bilgiAl();
  sahin.calistir();
  sahin.bilgiAl();
  sahin.hizlan(40);
  sahin.bilgiAl();
  sahin.yavasla(20);
  sahin.bilgiAl();
}
