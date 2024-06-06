import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Name',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Absen Mahasiswa'),
        ),
        body: Center(
          child: Column(
            children: [
              TeksUtama(
                teks1: 'VIRDA ROMADHANI',
                teks2: 'STI202102493',
              ),
              TeksUtama(
                teks1: 'MUHAMMAD RIFKI',
                teks2: 'STI202102498',
              ),
              TeksUtama(
                teks1: 'SEPTI APRILIA WULANDARI',
                teks2: 'STI202102504',
              ),
              TeksUtama(
                teks1: 'FATIN NURMALANINGRUM',
                teks2: 'STI202102504',
              ),
              TeksUtama(
                teks1: 'IMMACULATA HAGAR KEMALA',
                teks2: 'STI202102516',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    // Tentukan apakah latar belakang harus hijau
    bool isHighlight =
        teks1 == 'SEPTI APRILIA WULANDARI' && teks2 == 'STI202102504';

    return Container(
      color: isHighlight ? Colors.green : Colors.transparent,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
