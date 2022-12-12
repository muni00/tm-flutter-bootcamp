void main() {
  String str = "merahaba";

  //Tanımlama
  String? mesaj = null;

  //Yöntem 1 : null ise çökmez , null olmazsa çalışır
  print("Yöntem 1 : ${mesaj?.toUpperCase()}");

  //Yöntem 2 : uyarıdan kurtarır ama hata oluşabilir
  print("Yöntem 2 : ${mesaj!.toUpperCase()}");

  //Yöntem 3 :
  if (mesaj != null) {
    print("Yöntem 3 : ${mesaj.toUpperCase()}");
  } else
    print("mesaj nulldur");
}
