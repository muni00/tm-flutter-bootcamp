void main() {
  // 0 dan başlar 3 e kadar yazar
  for (var i = 0; i < 4; i++) {
    print(i);
  }
  print("***************************");
  // 10 dan başlar 20 ye kadar beşer yazar
  for (var i = 10; i < 21; i += 5) {
    print(i);
  }

  print("***************************");
  //20 den başlar 9 a kadar beşer azalarak yazar
  for (var i = 20; i > 9; i -= 5) {
    print(i);
  }
  print("***************************");
  int sayac = 1;
  while (sayac < 4) {
    print(sayac);
    sayac++;
  }
  print("***************************");
  for (var i = 1; i < 6; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }

  print("***************************");
  for (var i = 1; i < 6; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }
}
