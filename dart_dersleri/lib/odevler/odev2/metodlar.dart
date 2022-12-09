class Metodlar {
  double icAcilariHesapla(int kenarSayisi) {
    double icAciDegeri = ((kenarSayisi - 2) * 180) / kenarSayisi;
    return icAciDegeri;
  }

  int maasHesapla(int gunSayisi) {
    var calismaSaati = gunSayisi * 8;
    var mesaiSaati;
    if (calismaSaati > 150) {
      mesaiSaati = calismaSaati - 150;
      print(
          "150 iş saati , $mesaiSaati mesai saati olarak değerlendirilmiştir");
      return (mesaiSaati * 80) + (150 * 40);
    } else {
      print(
          "$calismaSaati iş saati olarak değerlendirilmiştir, mesai saatiniz bulunmamaktadır");
      return (calismaSaati * 40);
    }
  }

  double otoparkUcretHesapla(double sure) {
    if (sure <= 1)
      return 50;
    else {
      return ((sure - 1) * 10) + 50;
    }
  }

  double fahrenhiedHesapla(double derece) {
    var F = (derece * 1.8) + 32;
    return F;
  }

  double dikdortgenKenarHesapla(double kisaKenar, double uzunKenar) {
    var cevre = (kisaKenar * 2) + (uzunKenar * 2);
    return cevre;
  }

  double faktorielHesapla(int sayi) {
    if (sayi <= 1)
      return 1;
    else
      return sayi * faktorielHesapla(sayi - 1);
  }

  int kacTaneAHarfiVar(String kelime) {
    int sayac = 0;
    int uzunluk = kelime.length;
    for (int i = 0; i < uzunluk; i++) {
      if (kelime[i] == "a") {
        sayac++;
      }
    }
    return sayac;
  }
}
