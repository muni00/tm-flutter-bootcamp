import 'package:dart_dersleri/nesne_tabanli/composition/filmler.dart';
import 'package:dart_dersleri/nesne_tabanli/composition/yonetmenler.dart';

import 'kategoriler.dart';

void main() {
  var k1 = Kategoriler(1, "Dram");
  var k2 = Kategoriler(2, "Bilim Kurgu");

  var y1 = Yonetmenler(1, "Quentin Tarantino");
  var y2 = Yonetmenler(2, "Cristopher Nolan");

  var f1 = Filmler(1, "Django", 2013, k1, y1);

  print("Film id : ${f1.film_id}");
  print("Film ad : ${f1.film_ad}");
  print("Film yıl : ${f1.film_yil}");
  print("Film kategori : ${f1.film_kategori.kategori_ad}");
  print("Film yönetmen : ${f1.film_yonetmen.yonetmen_ad}");
}
