import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Veritabani {
  static final String veritabaniAdi = "rehber.sqlite";

  static Future<Database> veritabaniErisim() async {
    String veritabaniYolu = join(await getDatabasesPath(), veritabaniAdi);

    if (await databaseExists(veritabaniYolu)) {
      print("veritabanı zaten var");
    } else {
      //kopyalama işlemi
      ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(veritabaniYolu).writeAsBytes(bytes,
          flush: true); //flash sıkıntı olmasın veri kaybı olmasın diye
      print("veritabanı kopyalandı");
    }

    return openDatabase(veritabaniYolu);
  }
}
