import 'konserve_boyut.dart';

void main() {
  ucretHesaplama(30, KonserveBoyut.orta);
}

void ucretHesaplama(int adet, KonserveBoyut boyut) {
  switch (boyut) {
    case KonserveBoyut.kucuk:
      print("Ücret : ${adet * 14.5} tl ");
      break;
    case KonserveBoyut.orta:
      print("Ücret : ${adet * 27.5} tl ");
      break;
    case KonserveBoyut.buyuk:
      print("Ücret : ${adet * 53.5} tl ");
  }
}
