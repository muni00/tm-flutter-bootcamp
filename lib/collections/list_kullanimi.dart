void main() {
  //Tanımlama
  var plakalar = [16, 34, 6];
  var meyveler = <String>[];
  //Veri ekleme
  meyveler.add("muz"); //0.index
  meyveler.add("Kiraz"); //1.index
  meyveler.add("Elma"); //2.index
  print(meyveler);
  //Güncelleme
  meyveler[1] = "Yeni kiraz";
  print(meyveler);
  //insert
  meyveler.insert(1, "portakal");
  print(meyveler);
  //Veri okuma
  String meyve = meyveler[2];
  print(meyve);

  //for each

  for (var m in meyveler) {
    print("Sonuç : $m");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i. -> ${meyveler[i]}");
  }
  print(meyveler.isEmpty);
  print(meyveler.contains("muz"));

  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);
  
  meyveler.clear();
  print(meyveler);
}
