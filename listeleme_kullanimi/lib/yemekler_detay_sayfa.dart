import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemekler.dart';

class YemeklerDetaySayfa extends StatefulWidget {
  Yemekler yemek;

  YemeklerDetaySayfa({required this.yemek});

  @override
  State<YemeklerDetaySayfa> createState() => _YemeklerDetaySayfaState();
}

class _YemeklerDetaySayfaState extends State<YemeklerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var y = widget.yemek;
    return Scaffold(
      appBar: AppBar(
        title: Text(y.yemek_ad),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${y.resim_ad}"),
            Text(
              "${y.fiyat} ₺ ",
              style: TextStyle(fontSize: 48, color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                print("${y.yemek_ad} sipariş verildi ");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Sipariş ver",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
