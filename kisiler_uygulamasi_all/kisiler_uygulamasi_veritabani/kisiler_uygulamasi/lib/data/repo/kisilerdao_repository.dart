import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/data/sqlite/veritabani.dart';

class KisilerDaoRepository {
  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    var db = await Veritabani.veritabaniErisim();
    var bilgiler = Map<String, dynamic>();
    bilgiler["kisi_ad"] = kisi_ad;
    bilgiler["kisi_tel"] = kisi_tel;
    await db.insert("kisiler", bilgiler);
  }

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    var db = await Veritabani.veritabaniErisim();
    var bilgiler = Map<String, dynamic>();
    bilgiler["kisi_ad"] = kisi_ad;
    bilgiler["kisi_tel"] = kisi_tel;

    await db.update("kisiler", bilgiler,
        where: "kisi_id = ?", whereArgs: [kisi_id]);
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var db = await Veritabani.veritabaniErisim();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from kisiler");
    return List.generate(maps.length, (i) {
      //0,1
      var satir = maps[i];
      return Kisiler(
          kisi_id: satir["kisi_id"],
          kisi_ad: satir["kisi_ad"],
          kisi_tel: satir["kisi_tel"]);
    });
  }

  Future<List<Kisiler>> ara(String aramaKelimesi) async {
    var db = await Veritabani.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM kisiler WHERE kisi_ad like '%$aramaKelimesi%'");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Kisiler(
          kisi_id: satir["kisi_id"],
          kisi_ad: satir["kisi_ad"],
          kisi_tel: satir["kisi_tel"]);
    });
  }

  Future<void> sil(int kisi_id) async {
    var db = await Veritabani.veritabaniErisim();
    await db.delete("kisiler", where: "kisi_id=?", whereArgs: [kisi_id]);
  }
}
