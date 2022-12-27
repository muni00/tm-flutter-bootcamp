import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/filmler.dart';

class FilimlerDetay extends StatefulWidget {
  Filmler film;

  FilimlerDetay({required this.film});

  @override
  State<FilimlerDetay> createState() => _FilimlerDetayState();
}

class _FilimlerDetayState extends State<FilimlerDetay> {
  @override
  Widget build(BuildContext context) {
    var f = widget.film;
    return Scaffold(
      appBar: AppBar(
        title: Text(f.ad),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${f.resimAd}"),
            Text(
              "${f.fiyat} ₺ ",
              style: TextStyle(fontSize: 48, color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                print("${f.ad} sipariş verildi ");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Kirala",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
