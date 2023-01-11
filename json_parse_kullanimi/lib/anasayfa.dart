import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_parse_kullanimi/crud_cevap.dart';
import 'package:json_parse_kullanimi/filimler_cevap.dart';
import 'package:json_parse_kullanimi/kisiler_cevap.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  void initState() {
    super.initState();
    //crudCevapParse();
    //kisilerParse();
    filmlerParse();
  }

  void crudCevapParse() {
    String veri = '{"success":0,"message":"Required field(s) is missing"}';

    var jsonVeri = json.decode(veri);
    var crudCevap = CRUDCevap.fromJson(jsonVeri);
    print("---------------------------------------------------");
    print("Başarı : ${crudCevap.success}");
    print("Mesaj : ${crudCevap.message}");
  }

  void filmlerParse() {
    String veri =
        '{"filmler":[{"film_id":"1","film_ad":"Interstellar","film_yil":"2015","film_resim":"interstellar.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"2","film_ad":"Inception","film_yil":"2010","film_resim":"inception.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"3","film_ad":"The Pianist","film_yil":"2002","film_resim":"thepianist.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"4","yonetmen_ad":"Roman Polanski"}},{"film_id":"4","film_ad":"Bir Zamanlar Anadoluda","film_yil":"2011","film_resim":"birzamanlaranadoluda.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Nuri Bilge Ceylan"}},{"film_id":"5","film_ad":"The Hateful Eight","film_yil":"2015","film_resim":"thehatefuleight.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}},{"film_id":"18","film_ad":"Django","film_yil":"2013","film_resim":"django.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}}],"success":1}';

    var jsonVeri = json.decode(veri);
    var filmlerCevap = FilmlerCevap.fromJson(jsonVeri);

    print("---------------------------------------------------");
    print("Başari : ${filmlerCevap.success}");
    for (var f in filmlerCevap.filmler) {
      print("---------------------------------------------------");
      print("Kişi id : ${f.film_id}");
      print("Kişi id : ${f.film_ad}");
      print("Kişi id : ${f.film_yil}");
      print("Kişi id : ${f.film_resim}");
      print("Kişi id : ${f.kategori.kategori_ad}");
      print("Kişi id : ${f.yonetmen.yonetmen_ad}");
    }
  }

  void kisilerParse() {
    String veri =
        '{"kisiler":[{"kisi_id":"12819","kisi_ad":"Ahmet","kisi_tel":"0000"},{"kisi_id":"12821","kisi_ad":"Zeynep","kisi_tel":"9999"}],"success":1}';
    var jsonVeri = json.decode(veri);
    var kisilerCevap = KisilerCevap.fromJson(jsonVeri);
    print("---------------------------------------------------");
    print("Başari : ${kisilerCevap.success}");
    for (var k in kisilerCevap.kisiler) {
      print("---------------------------------------------------");
      print("Kişi id : ${k.kisi_id}");
      print("Kişi id : ${k.kisi_ad}");
      print("Kişi id : ${k.kisi_tel}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
