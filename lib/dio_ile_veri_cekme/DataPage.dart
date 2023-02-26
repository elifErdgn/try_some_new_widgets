import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:try_some_new_widgets/dio_ile_veri_cekme/riverpod_managment.dart';

class DataScreen extends ConsumerStatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends ConsumerState<DataScreen> {

  @override
  void initState() {
    ref.read(homeRiverpod).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(homeRiverpod);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: state.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GrockList(
              itemBuilder: (contex, index) {
                var item = state.datas[index]!;
                return Card(
                  child: ListTile(
                    title: Text(
                      item.title ?? "",
                    ),
                    subtitle: Text(item.description ?? "",),
                  ),
                );
              },
              itemCount: state.datas.length,
            ),
    );
  }
}
