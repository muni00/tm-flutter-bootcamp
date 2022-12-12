import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/hayvan.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/kedi.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/kopek.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/memeli.dart';

void main() {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar(); // kalıtım yok , kendi metodunu çalıştırdı
  memeli
      .sesCikar(); // hayvandan kalıtım aldı , üst sınıfıın metodunu çalıştırdı, kendinde yok
  kedi.sesCikar(); // hayvan sınıfından aldığı metodu override etti
  kopek.sesCikar(); //memeli sınıfından aldığı metodu override etti
}
