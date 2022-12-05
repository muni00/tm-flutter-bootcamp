void main() {
  print("Hello World");

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
