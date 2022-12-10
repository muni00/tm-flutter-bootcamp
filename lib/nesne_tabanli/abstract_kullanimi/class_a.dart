import 'package:dart_dersleri/nesne_tabanli/abstract_kullanimi/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    // TODO: implement metod1
  }

  @override
  String metod2() {
    // TODO: implement metod2
    throw UnimplementedError();
  }
}
