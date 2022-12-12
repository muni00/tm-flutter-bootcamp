import 'dart:collection';

void main() {
  //Tanımlama
  var plakalar = HashSet.from([16, 34, 28]); // liste dönüşüyor

  var meyveler = HashSet<String>();
  //Veri ekleme

  meyveler.add("Muz");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  print(meyveler);

  meyveler.add("Amasya Elması");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  for (var m in meyveler) {
    print("Sonuç : $m");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i . -> ${meyveler.elementAt(i)}");
  }

  meyveler.remove("Muz");
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}
