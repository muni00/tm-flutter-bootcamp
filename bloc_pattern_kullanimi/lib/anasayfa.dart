import 'package:block_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatelessWidget {
  var tfSayiBir = TextEditingController();
  var tfSayiIki = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Block Kullanımı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit, int>(
                builder: (context, s) {
                  return Text(
                    s.toString(),
                    style: TextStyle(fontSize: 50),
                  );
                },
              ),
              TextField(
                controller: tfSayiBir,
                decoration: const InputDecoration(hintText: "Sayi 1 "),
              ),
              TextField(
                controller: tfSayiIki,
                decoration: const InputDecoration(hintText: "Sayi 2 "),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String alinanSayi1 = tfSayiBir.text;
                        String alinanSayi2 = tfSayiIki.text;

                        context
                            .read<AnasayfaCubit>()
                            .toplamaYap(alinanSayi1, alinanSayi2);
                      },
                      child: const Text("TOPLAMA")),
                  ElevatedButton(
                      onPressed: () {
                        String alinanSayi1 = tfSayiBir.text;
                        String alinanSayi2 = tfSayiIki.text;
                        context
                            .read<AnasayfaCubit>()
                            .carpmaYap(alinanSayi1, alinanSayi2);
                      },
                      child: const Text("ÇARPMA")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
