import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_iki.dart';

class TabsSayfa extends StatefulWidget {
  const TabsSayfa({Key? key}) : super(key: key);

  @override
  State<TabsSayfa> createState() => _TabsSayfaState();
}

class _TabsSayfaState extends State<TabsSayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabs"),
          backgroundColor: Colors.deepPurple,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "bir",
                icon: Icon(Icons.looks_one_outlined),
              ),
              Tab(
                text: "iki",
                icon: Icon(Icons.looks_two_outlined),
              ),
            ],
            indicatorColor: Colors.purple,
            labelColor: Colors.amber,
          ),
        ),
        body: const TabBarView(children: [SayfaBir(), SayfaIki()]),
      ),
    );
  }
}
