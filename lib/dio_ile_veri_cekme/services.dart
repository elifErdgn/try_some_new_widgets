import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/task_model.dart';

import 'loginmodel.dart';

class Service {
  final String baseUrl = "https://nottapp.herokuapp.com/";

  /// link çalışmıyor bu kısımda bize token döndürecek bir linke ihtiyacımız var boş kalmasın diye videodaki linki aldım
  final dio = Dio();

  Future<LoginModel?> loginCall(
      {required String email, required String password}) async {
    Map<String, dynamic> json = {"email": email, "password": password};
    var response = await dio.post(baseUrl + "login", data: json);
    if (response.statusCode == 200) {
      var result = LoginModel.fromJson(response.data);
      print("Gelen Response ${response.data}");
      return result;
    } else {
      throw ("bir hata oluştu ${response.statusCode}");
    }
  }

  Future<TaskModel?> taskCall() async {
    String token = GetStorage().read("token");
    var response = await dio.get(
      baseUrl + "list",
      options: Options(
        headers: {"Authorization": "Bearer $token"},
      ),
    );
    if (response.statusCode == 200) {
      var result = TaskModel.fromJson(response.data);
      print("Gelen Response ${response.data}");
      return result;
    } else {
      throw ("bir hata oluştu ${response.statusCode}");
    }
  }
}
