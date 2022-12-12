void main() {
  // 1. compile error : yazarken oluşan hatalar
  //String x = 10; gibi

  // 2. runtime error : çalışma anında oluşan hatalar , genelede uygulama çökerten denebilir
  var liste = <String>[];
  liste.add("Ahmet"); //0
  liste.add("Zeynep"); //1

  try {
    String isim = liste[3];
    print(isim);
  } catch (e) {
    print("Listenin boyutunu aştınız");
  }
}
