import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String alinanVeri = "";
  var tfKontrol = TextEditingController();
  String resimAdi = "baklava.png";
  bool switchKomtrol = false;
  bool checkBoxKontrol = false;
  int radioDeger = 0;
  bool progressKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";
  var tfAlert = TextEditingController();

  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("İtalya");
    ulkelerListesi.add("Japonya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget kullanimi"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  controller: tfKontrol,
                  decoration: const InputDecoration(hintText: "Veri Yazınız "),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    alinanVeri = tfKontrol.text;
                  });
                },
                child: const Text("YAP"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "kofte.png";
                      });
                    },
                    child: const Text("RESİM 1"),
                  ),
                  //Image.asset("resimler/$resimAdi"),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.network(
                        "http://kasimadalan.pe.hu/yemekler/resimler/${resimAdi}"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "ayran.png";
                      });
                    },
                    child: const Text("RESİM 2"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: SwitchListTile(
                        title: const Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchKomtrol,
                        onChanged: (veri) {
                          setState(() {
                            switchKomtrol = veri;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 160,
                    child: CheckboxListTile(
                        title: const Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkBoxKontrol,
                        onChanged: (veri) {
                          setState(() {
                            checkBoxKontrol = veri!;
                          });
                        }),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                        title: const Text("Barcelona"),
                        value: 1,
                        groupValue: radioDeger,
                        onChanged: (veri) {
                          setState(() {
                            radioDeger = veri!;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 160,
                    child: RadioListTile(
                        title: const Text("Real Madrid"),
                        value: 2,
                        groupValue: radioDeger,
                        onChanged: (veri) {
                          setState(() {
                            radioDeger = veri!;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = true;
                      });
                    },
                    child: const Text("Başla"),
                  ),
                  Visibility(
                      visible: progressKontrol,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = false;
                      });
                    },
                    child: const Text("Dur"),
                  ),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              Slider(
                  min: 0.0,
                  max: 100.0,
                  value: ilerleme,
                  onChanged: (veri) {
                    setState(() {
                      ilerleme = veri;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 120,
                      child: TextField(
                        controller: tfSaat,
                        decoration: const InputDecoration(hintText: "Saat"),
                      )),
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                                context: context,
                                initialTime:
                                    TimeOfDay.fromDateTime(DateTime.now()))
                            .then((value) {
                          tfSaat.text = "${value!.hour}:${value!.minute}";
                        });
                      },
                      icon: const Icon(Icons.access_time)),
                  SizedBox(
                      width: 120,
                      child: TextField(
                        controller: tfTarih,
                        decoration: const InputDecoration(hintText: "Tarih"),
                      )),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030))
                            .then((value) {
                          tfTarih.text =
                              "${value!.day}/${value!.month}/${value!.year}";
                        });
                      },
                      icon: const Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke) {
                    return DropdownMenuItem(
                      child: Text(ulke),
                      value: ulke,
                    );
                  }).toList(),
                  onChanged: (veri) {
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }),
              GestureDetector(
                onTap: () {
                  print("tek tıklanma");
                },
                onDoubleTap: () {
                  print("çift tıklanma");
                },
                onLongPress: () {
                  print("uzun basıldı");
                },
                child: Container(
                  width: 200,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // ignore: prefer_const_constructors
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text("Silmek istiyor musunuz"),
                          action: SnackBarAction(
                              label: "Evet",
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Silindi"),
                                ));
                              }),
                        ));
                      },
                      child: const Text("SnackBar")),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.white,
                            content: const Text(
                              'İnternet bağlantısı yok',
                              style: TextStyle(color: Colors.indigoAccent),
                            ),
                            action: SnackBarAction(
                              label: 'Tekrar dene',
                              textColor: Colors.red,
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                      child: const Text('Snackbar(ö)')), //özel
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Başlık'),
                                content: const Text('İçerik'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(
                                            context); //geri tuşuna basınca kapanıyor demekki bir pop eklenmiş
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('İptal seçildi')));
                                      },
                                      child: const Text('İptal')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('Tamam seçildi')));
                                      },
                                      child: const Text('Tamam'))
                                ],
                              );
                            });
                      },
                      child: const Text('Alert')),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.grey,
                                title: const Text('Kayıt İşlemi'),
                                content: TextField(
                                  controller: tfAlert,
                                  decoration:
                                      const InputDecoration(hintText: 'Veri'),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(
                                            context); //geri tuşuna basınca kapanıyor demekki bir pop eklenmiş
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('İptal seçildi')));
                                      },
                                      child: const Text(
                                        'İptal',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'Alınan Veri ${tfAlert.text}')));
                                      },
                                      child: const Text(
                                        'Kaydet',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              );
                            });
                      },
                      child: const Text('Alerrt(ö)')),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    print("SwitchKontrol : $switchKomtrol");
                    print("CheckBoxKontrol : $checkBoxKontrol");
                    print("RadioButton durum : $radioDeger");
                    print("Slider durum : $ilerleme");
                    print("Seçilen ulke : $secilenUlke");
                  },
                  child: const Text("Göster")),
            ],
          ),
        ),
      ),
    );
  }
}
