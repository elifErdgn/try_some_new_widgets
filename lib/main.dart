import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:try_some_new_widgets/homeScreen.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/mostminimalistLoginPage.dart';
import 'package:try_some_new_widgets/pages/johannes_login_json_token.dart';


void main() async {
  //  await UserPreferences.init();

  runApp( ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      theme: AppTheme.light,
      home: const HomePage(),
    );  
  }
}
