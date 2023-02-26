import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/home_riverpod.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/login_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((_) =>  LoginRiverpod());
final homeRiverpod = ChangeNotifierProvider((_) =>  HomeRiverpod());