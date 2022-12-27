import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/filmler.dart';
import 'package:listeleme_kullanimi/filmler_detay_sayfa.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {
  Future<List<Filmler>> filmleriGetir() async {
    var filmlerListesi = <Filmler>[];
    var f1 =
        Filmler(id: 1, ad: "Anadoluda", resimAd: "anadoluda.png", fiyat: 24.0);
    var f2 = Filmler(id: 2, ad: "DJango", resimAd: "django.png", fiyat: 18.0);
    var f3 =
        Filmler(id: 3, ad: "Inception", resimAd: "inception.png", fiyat: 32.0);
    var f4 = Filmler(
        id: 4, ad: "Interstellar", resimAd: "interstellar.png", fiyat: 21.0);
    var f5 = Filmler(
        id: 5,
        ad: "The Hateful Eight",
        resimAd: "thehatefuleight.png",
        fiyat: 15.0);
    var f6 = Filmler(
        id: 6, ad: "The Pianist", resimAd: "thepianist.png", fiyat: 14.0);

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmler"),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filimlerListesi = snapshot.data;
            return GridView.builder(
              itemCount: filimlerListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3.5,
              ),
              itemBuilder: (context, indeks) {
                var film = filimlerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilimlerDetay(
                                  film: film,
                                )));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("resimler/${film.resimAd}"),
                        ),
                        Text(
                          film.ad,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${film.fiyat} tl",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        )
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
