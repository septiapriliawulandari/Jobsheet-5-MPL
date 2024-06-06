import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Definisi kelas TeksUtama untuk digunakan dalam tes
class TeksUtama extends StatelessWidget {
  final List<String> namaList;

  TeksUtama({required this.namaList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: namaList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(namaList[index]),
        );
      },
    );
  }
}

void main() {
  testWidgets('TeksUtama menampilkan 5 nama', (WidgetTester tester) async {
    // Daftar nama untuk diuji
    final List<String> namaList = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

    // Bangun widget TeksUtama dengan namaList
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TeksUtama(namaList: namaList),
      ),
    ));

    // Verifikasi bahwa setiap nama muncul di widget
    for (String nama in namaList) {
      expect(find.text(nama), findsOneWidget);
    }
  });
}
