import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

void loadingPopup() {
  Grock.dialog(
    /// grock animaasyon kullanmak için
    builder: (_) {
      /// contex istemediği için _ verdik
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
