import 'package:dart_dersleri/nesne_tabanli/composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli/composition/yonetmenler.dart';

class Filmler {
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler film_kategori;
  Yonetmenler film_yonetmen;

  Filmler(this.film_id, this.film_ad, this.film_yil, this.film_kategori,
      this.film_yonetmen);
}
