import 'package:dart_dersleri/collections/urunler.dart';

void main() {
  var u1 = Urunler(id: 1, ad: "Tv", fiyat: 8000);
  var u2 = Urunler(id: 2, ad: "Laptop", fiyat: 20000);
  var u3 = Urunler(id: 3, ad: "Saat", fiyat: 3000);

  var urunlerListesi = <Urunler>[];

  urunlerListesi.add(u1);
  urunlerListesi.add(u2);
  urunlerListesi.add(u3);

  for (var u in urunlerListesi) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  //Sort - Sıralama
  // Fiyat için artan
  Comparator<Urunler> siralama1 = (x, y) => x.fiyat.compareTo(y.fiyat);
  urunlerListesi.sort(siralama1);

  print("Fiyatt : Artan");
  for (var u in urunlerListesi) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  // Fiyat için azalan
  Comparator<Urunler> siralama2 = (x, y) => y.fiyat.compareTo(x.fiyat);
  urunlerListesi.sort(siralama2);

  print("Fiyatt : Azalan");
  for (var u in urunlerListesi) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  // Ad için Artan
  Comparator<Urunler> siralama3 = (x, y) => x.ad.compareTo(y.ad);
  urunlerListesi.sort(siralama3);

  print("Ad : Artan");
  for (var u in urunlerListesi) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  // Ad için Azalan
  Comparator<Urunler> siralama4 = (x, y) => y.ad.compareTo(x.ad);
  urunlerListesi.sort(siralama4);

  print("Ad : Azalan");
  for (var u in urunlerListesi) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  //Filter - Filtreleme
  //where = if gibi düşünülebilir / veritabanlarındaki gibi koşul oluşturma yapısıdır
  Iterable<Urunler> filtreleme1 = urunlerListesi.where(
      (urunNesnesi) => urunNesnesi.fiyat > 5000 && urunNesnesi.fiyat < 10000);

  var liste1 = filtreleme1.toList();
  print("*********************Filtreleme 1*********************");
  //for (var u in filtreleme1) { //şeklinde de çalışıyor
  for (var u in liste1) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }

  Iterable<Urunler> filtreleme2 =
      urunlerListesi.where((urunNesnesi) => urunNesnesi.ad.contains("at"));

  var liste2 = filtreleme2.toList();
  print("*********************Filtreleme 2*********************");
  //for (var u in filtreleme1) { //şeklinde de çalışıyor
  for (var u in liste2) {
    print("Id : ${u.id} - Ad : ${u.ad} - Fiyat : ${u.fiyat}");
  }
}
