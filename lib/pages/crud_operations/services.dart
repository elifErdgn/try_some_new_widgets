import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:try_some_new_widgets/pages/crud_operations/api.dart';
import 'package:try_some_new_widgets/pages/crud_operations/model/model.dart';

class ApiService {
  Future<List<QuestionsModel>?> getAllData() async {
    try {
      var Url = Uri.parse(ApiConstants.apiEndpoint);
      var response = await http.get(Url);
      if (response.statusCode == 200) {
        var json = response.body;
        return questionsFromJson(json);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> deleteData(String id) async {
    var url = Uri.parse("https://636bb1a87f47ef51e137cd42.mockapi.io/api/questions/Deneme1Res/$id");
    final response = await http.delete(url);
    if(response.statusCode == 200){
      return true;
    }
    else{
      throw Exception("Veri silinirken hata oluştu");
    }
  }
}
