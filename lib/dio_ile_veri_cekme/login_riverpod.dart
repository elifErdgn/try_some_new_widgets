import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/loading_popup.dart';
import 'DataPage.dart';
import 'services.dart';

class LoginRiverpod extends ChangeNotifier {
  final service = Service();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final box = GetStorage(); // localde tokenı tutacak bir box oluşturduk

//  bool isloading= false;

  void fetch() {
    loadingPopup();
    service.loginCall(email: email.text, password: password.text).then((value) {
      if (value != null && value.status! == true) {
        box.write("token", value.token);
        print("Kaydedilen token => ${box.read("token")}");
        ///status  api ye özel
        Grock.back();
        Grock.toRemove(DataScreen());
      }
      else {
        Grock.back();
        Grock.snackBar(title: "Hata", description: value?.message ?? "Bir sorun oluştu, tekrar deneyin");
      }
    });
  }
}
