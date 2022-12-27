import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemekler.dart';
import 'package:listeleme_kullanimi/yemekler_detay_sayfa.dart';

class YemeklerSayfa extends StatefulWidget {
  const YemeklerSayfa({Key? key}) : super(key: key);

  @override
  State<YemeklerSayfa> createState() => _YemeklerSayfaState();
}

class _YemeklerSayfaState extends State<YemeklerSayfa> {
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemeklerListesi = <Yemekler>[];
    var y1 = Yemekler(
        yemek_id: 1, yemek_ad: "Köfte", resim_ad: "kofte.png", fiyat: 50);
    var y2 = Yemekler(
        yemek_id: 1, yemek_ad: "Ayran", resim_ad: "ayran.png", fiyat: 10.0);
    var y3 = Yemekler(
        yemek_id: 1, yemek_ad: "Fanta", resim_ad: "fanta.png", fiyat: 12.0);
    var y4 = Yemekler(
        yemek_id: 1, yemek_ad: "Makarna", resim_ad: "makarna.png", fiyat: 48);
    var y5 = Yemekler(
        yemek_id: 1, yemek_ad: "Kadayıf", resim_ad: "kadayif.png", fiyat: 35);
    var y6 = Yemekler(
        yemek_id: 1, yemek_ad: "Baklava", resim_ad: "baklava.png", fiyat: 60);
    yemeklerListesi.add(y1);
    yemeklerListesi.add(y2);
    yemeklerListesi.add(y3);
    yemeklerListesi.add(y4);
    yemeklerListesi.add(y5);
    yemeklerListesi.add(y6);

    return yemeklerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yemekler"),
        backgroundColor: Colors.orange,
      ),
      body: FutureBuilder<List<Yemekler>>(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yemeklerListesi = snapshot.data;
            return ListView.builder(
              itemCount: yemeklerListesi!.length,
              itemBuilder: (context, index) {
                var yemek = yemeklerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YemeklerDetaySayfa(yemek: yemek)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("resimler/${yemek.resim_ad}")),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              yemek.yemek_ad,
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "${yemek.fiyat} ₺",
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.blue),
                            ),
                          ],
                        ),
                        Spacer(),
                        const Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
