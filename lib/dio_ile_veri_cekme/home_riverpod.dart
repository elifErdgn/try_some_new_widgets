import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/services.dart';
import 'task_model.dart';

class HomeRiverpod extends ChangeNotifier {
  List<TaskModelDataNotComplated?> datas = [];
  final service = Service();
  bool isLoading = false;

  void getData() {
    // loadingPopup();
    isLoading = true;
    service.taskCall().then((value) {
      if (value != null && value.status == true) {
        datas = value.data!.notComplated!;
        isLoading = false;
        notifyListeners();
      } else {
        isLoading = false;
        notifyListeners();
        Grock.snackBar(title: "Hata", description: "Bir sorun oluştu");
      }
    });
  }
}
