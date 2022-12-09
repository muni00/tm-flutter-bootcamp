import 'package:dart_dersleri/nesne_tabanli/fonksiyonlar.dart';

void main() {
  var selam = Fonksiyonlar();

  selam.selamla();
  var gelenSonuc = selam.selamla1();
  print(gelenSonuc);
  var gelenSonuc1 = selam.selamla2("Nihal");
  print(gelenSonuc1);
  var gelenSonuc2 = selam.toplama(10, 20);
  print(gelenSonuc2);
}
