import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/DataPage.dart';

import 'login.dart';


///  MaterialApp in home unda Splash screeni çalıştırmak gerekiyor 


class SplashSc extends StatefulWidget {
  const SplashSc({Key? key}) : super(key: key);

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {
  final box = GetStorage();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),() {
    if(box.read("token") !=null){
      Grock.toRemove(DataScreen());
    }else{
      Grock.toRemove(LoginDataToken());
    }

    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hoşgeldiniz.."),
      ),
    );
  }
}
