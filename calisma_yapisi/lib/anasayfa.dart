import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver {
  int sayac = 0;
  bool kontrol = false;
  @override
  void initState() {
    super.initState();
    print("initState() çalıştı");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      print("inactive çalıştı");
    }
    if (state == AppLifecycleState.paused) {
      print("paused çalıştı");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed çalıştı");
    }
    if (state == AppLifecycleState.detached) {
      print("detached çalıştı");
    }
  }

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Sayaç : $sayac",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac += 1; //sayac = sayac + 1;
                  });
                },
                child: const Text("TIKLA")),
            ElevatedButton(
                onPressed: () {
                  var kisi =
                      Kisiler(ad: "Mehmet", yas: 23, boy: 1.92, bekar: false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OyunEkrani(
                                kisi: kisi,
                              ))).then((value) {
                    print("anasayfaya geri dönüldü");
                  });
                },
                child: const Text("BAŞLA")),
            Visibility(visible: kontrol, child: const Text("MERHABA")),
            Text(
              kontrol ? "MERHABA" : "X",
              style: TextStyle(color: kontrol ? Colors.blue : Colors.red),
            ),
            (() {
              if (kontrol) {
                return const Text(
                  "MERHABA",
                  style: TextStyle(color: Colors.blue),
                );
              } else {
                return const Text(
                  "X",
                  style: TextStyle(color: Colors.red),
                );
              }
            }()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = true;
                  });
                },
                child: const Text("DURUM 1 (TRUE)")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = false;
                  });
                },
                child: const Text("DURUM 2 (FALSE)")),
            FutureBuilder<int>(
                future: toplama(10, 20),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Hata oluştu");
                  }
                  if (snapshot.hasData) {
                    return Text("Sonuc : ${snapshot.data}");
                  } else {
                    return const Text("Sonuc yok");
                  }
                }),
          ],
        ),
      ),
    );
  }
}
