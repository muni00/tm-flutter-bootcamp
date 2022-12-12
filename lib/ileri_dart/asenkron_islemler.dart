Future<void> main() async {
  print("Verilein alınması bekleniyor ...");
  var veri = await veritanindanVeriAl();
  print("Veri alınıyor ..");
  print("Alınan veri : $veri");
}

Future<String> veritanindanVeriAl() async {
  for (var i = 1; i <= 5; i++) {
    Future.delayed(
        Duration(seconds: i), () => print("Alınan veri miktarı : %${i * 20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => "Veritabanı veri kümesi");
}
