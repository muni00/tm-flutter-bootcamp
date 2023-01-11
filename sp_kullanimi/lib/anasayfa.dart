import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  void initState() {
    super.initState();
    // test();
    sayacKontrol();
  }

  Future<void> test() async {
    //Tanımlama
    var sp = await SharedPreferences.getInstance();

    //Veri kaydı
    sp.setString("ad", "Ahmet");
    sp.setInt("yaş", 23);
    sp.setDouble("boy", 1.78);
    sp.setBool("bekar", true);

    var arkadasListesi = <String>[];
    arkadasListesi.add("Eda");
    arkadasListesi.add("Ali");

    sp.setStringList("liste", arkadasListesi);
    //silme
    //sp.remove("ad");

    //Veri okuma
    String gelenAd = sp.getString("ad") ?? "isim yok"; //default value
    int gelenYas = sp.getInt("yaş") ?? 0;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    bool gelenBekar = sp.getBool("bekar") ?? false;

    var gelenListe = sp.getStringList("liste") ?? <String>[];

    print("gelen ad :$gelenAd");
    print("Gelen yaş : $gelenYas");
    print("Gelen boy : $gelenBoy");
    print("Gelen bekar : $gelenBekar");

    for (var a in gelenListe) {
      print("Arkadaş : $a");
    }
  }

  int sayac = 0;

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac += 1;
    });
    sp.setInt("sayac", sayac);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              sayac.toString(),
              style: TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}
