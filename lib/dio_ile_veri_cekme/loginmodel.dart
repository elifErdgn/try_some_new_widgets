

class LoginModel {
/*
{
  "message": "Kullanıcı doğrulandı",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im11aGFtbWVkQGdtYWlsLmNvbSIsImlhdCI6MTY0OTExMTQ3OH0.3E-wCUArCeTm4NtPvaomIzrWXDgsTzEdMoFWy_OvSUQ",
  "status": true
}
*/

  String? message;
  String? token;
  bool? status;

  LoginModel({
    this.message,
    this.token,
    this.status,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message']?.toString();
    token = json['token']?.toString();
    status = json['status'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['token'] = token;
    data['status'] = status;
    return data;
  }
}