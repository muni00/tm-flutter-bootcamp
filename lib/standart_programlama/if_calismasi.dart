void main() {
  int yas = 19;
  String isim = "nihal";

  if (yas >= 18) {
    print("Reşitsiniz");
  } else {
    print("Reşit değilsiniz");
  }

  if (isim == "nihal") {
    print("Merhaba Nihal");
  } else {
    print("Tanınmayan kişi");
  }

  if (isim == "nihal") {
    print("Merhaba Nihal");
  } else if (isim == "Ahmet") {
    print("Merhaba Ahmet");
  } else {
    print("Tanınmayan kişi");
  }

  String kullaniciAdi = "Admin";
  int sifre = 12345;

  if (kullaniciAdi == "Admin" && sifre == 12345) {
    //And : true & true ise true diğer durumlar false olur
    print("Hoşgeldiniz");
  } else {
    print("Hatalı giriş");
  }

  int sayi = 10;

  if (sayi == 9 || sayi == 10) {
    //Or : false||false ise false dur diğer durumlarda true olur
    print("Sayi 9 veya 10 dur");
  } else {
    print("sayi 9 veya 10 değildir");
  }
}
