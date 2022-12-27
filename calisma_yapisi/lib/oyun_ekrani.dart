import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;

  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  Future<bool> geriTusu(BuildContext context) async {
    print("navigator tuşuna tıklandı");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var k = widget.kisi;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(
            onPressed: () {
              print("appBar tıklandı");
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: WillPopScope(
        onWillPop: () => geriTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${k.ad} - ${k.yas} - ${k.boy} - ${k.bekar}"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SonucEkrani()));
                  },
                  child: const Text("BİTTİ")),
            ],
          ),
        ),
      ),
    );
  }
}
