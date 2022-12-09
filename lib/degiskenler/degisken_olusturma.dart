void main() {
  var ogrenciAdi = "Nihal";
  var ogrenciYasi = 23;
  var ogrenciBoyu = 1.78;
  var ogrenciBasHarfi = "N";
  var ogrenciDevamEdiyorMu = true;

  print(ogrenciAdi);
  print(ogrenciYasi);
  print(ogrenciBoyu);
  print(ogrenciBasHarfi);
  print(ogrenciDevamEdiyorMu);

  print("**************************************");

  int urunId = 3428;
  String urunAdi = "Kol Saati";
  int urunAdeti = 100;
  double urunFiyati = 149.99;
  String urunTedarikci = "Rolex";

  print("Ürün Id : $urunId");
  print("Ürün Adı : $urunAdi");
  print("Ürün Adeti : $urunAdeti");
  print("Ürün Fiyatı : $urunFiyati tl");
  print("Ürün Tedarikçici : $urunTedarikci");
  print("**************************************");
  int a = 100;
  int b = 200;

  print("$a ve $b toplamı : ${a + b}");
  print("**************************************");
  // sabitler
  //final ve const

  int sayi = 30;
  print(sayi);
  sayi = 100;
  print(sayi);

  // kodlamayı çalıştırınca bellekte yer ayrılır
  final int sonuc = 100;
  // sonuc =30; yapılamaz yani değiştirilemez

  // const ta ise tanımlandığında hafızada oluşur
  //genellikle görsel özellikler için kullanılır
  const double pi = 3.14;

  //Tür dönüşümü
  int i = 78;
  double d = 98.67;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();

  print(sonuc1);
  print(sonuc2);

  // Sayısaldan metine dönüşüm
  String sonuc3 = i.toString();
  String sonuc4 = d.toString();

  print(sonuc3);
  print(sonuc4);

  // Metinden Sayısala dönnüşüm

  String yazi1 = "25";
  String yazi2 = "51.45";

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);

  print(sonuc5);
  print(sonuc6);
}
