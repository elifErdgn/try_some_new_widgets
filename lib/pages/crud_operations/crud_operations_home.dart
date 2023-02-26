import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/pages/crud_operations/model/model.dart';
import 'package:try_some_new_widgets/pages/crud_operations/services.dart';

class CRUSoperationsPage extends StatefulWidget {
  const CRUSoperationsPage({Key? key}) : super(key: key);

  @override
  State<CRUSoperationsPage> createState() => _CRUSoperationsPageState();
}

class _CRUSoperationsPageState extends State<CRUSoperationsPage> {
  ApiService apiService = ApiService();
  List<QuestionsModel>? listQuestion = [];
  bool isLoading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    listQuestion = await apiService.getAllData();
    if(listQuestion != null){
      setState(() {
        isLoading = true;
      });
    }
  }

  void deleteData(String id)async {
    final response = await apiService.deleteData(id);
    if(response == true){
      setState(() {
        getData();
      });
    }
    else{
      print("silinirken bir hata oluştu");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoading,
        replacement: Center(child: CircularProgressIndicator(),),
        child: ListView.builder(
          itemCount: listQuestion?.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(listQuestion![index].name),
                leading: Icon(Icons.face),
                onLongPress: (){
                  deleteData(listQuestion![index].id);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
