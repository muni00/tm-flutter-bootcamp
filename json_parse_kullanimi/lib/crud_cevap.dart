class CRUDCevap {
  int success;
  String message;

  CRUDCevap({required this.success, required this.message});

  factory CRUDCevap.fromJson(Map<String, dynamic> json) {
    return CRUDCevap(
        success: json["success"] as int, message: json["message"] as String);
  }
}
