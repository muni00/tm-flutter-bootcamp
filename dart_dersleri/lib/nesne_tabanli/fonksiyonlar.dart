class Fonksiyonlar {
  void selamla() {
    String sonuc = "Merhaba Nihal";
    print(sonuc);
  }

  String selamla1() {
    String sonuc = "merhaba Nihal";
    return sonuc;
  }

  String selamla2(String isim) {
    String sonuc = "merhaba $isim";
    return sonuc;
  }

  int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    return toplam;
  }
}
