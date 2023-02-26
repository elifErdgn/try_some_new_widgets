import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Main klasörünü ProiderScope ile sarmaladıktan sonra

final merhabaMesaji = Provider((ref) => 'Merhaba dünya..');
final counterProvider = ChangeNotifierProvider((ref) => IncrementCounter());

class E_Ticaret_Home extends ConsumerWidget {
  const E_Ticaret_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch<IncrementCounter>(counterProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              count.value.toString(),
              //  ref.read<String>(merhabaMesaji),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.incCount();
        },
      ),
    );
  }
}

class IncrementCounter extends ChangeNotifier {
  /// flutter a ait
  int _value = 0;

  int get value => _value;

  incCount() {
    _value++;
    notifyListeners();
  }
}
