import 'package:block_pattern_kullanimi/matematik_repositrory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  //yönetilecek değerin tipi verilir
  AnasayfaCubit() : super(0); //0 varsayılan değer
  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.topla(alinanSayi1, alinanSayi2));
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.carp(alinanSayi1, alinanSayi2)); //veri gönderme altyapısı gibi
  }
}
