import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/riverpod_managment.dart';

/// Proje çalıştırılacağı zaman main dosyasındaki MaterialApp() içinde şu değişimler yapılmalı
/// navigatorKey: Grock.navigationkEY,
/// scaffolMessengerKey: Grock.snackbarMessengerKey,

/// provider paketini kullanabilmek için main sayfasında runApp içinde ProvdierScope() ile sarmalamak önemli
/// runApp(ProviderScope(child: MyApp()));
///
/// giriş yapıldıktan sonra oturumu açık olan kullanıcının tokenını local bir veritabanında tutabilmek için get storage kullanılabilir.shared preference ve hive ile aynı paket (muadil)
/// bu paketin kulanımında main'in içinde metodu async yaptıktan sonra await GetStorage.init();  komutunu runAppden önce tanımlamak şart .


class LoginDataToken extends ConsumerStatefulWidget {
  ///consumer stateful riverpod paketinden geliyor
  const LoginDataToken({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginDataToken> createState() => _LoginDataTokenState();
}

class _LoginDataTokenState extends ConsumerState<LoginDataToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: ref.read(loginRiverpod).email,
              decoration: InputDecoration(
                hintText: "E-Mail",
              ),
            ),
            TextField(
              controller: ref.read(loginRiverpod).password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "E-Mail",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(loginRiverpod).fetch();
                },
                child: Center(
                  child: Text("LOGIN"),
                )),
          ],
        ),
      ),
    );
  }
}
