import 'package:flutter/material.dart';
import 'konversi.dart';

class ResultPage extends StatelessWidget {
  final double totalSKS;
  final double ipk;

  const ResultPage({super.key, required this.totalSKS, required this.ipk});

  @override
  Widget build(BuildContext context) {
    final konversi = Konversi();
    final String statusIPK = konversi.indeksPrestrasiSemester(ipk);

    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Perhitungan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total SKS: $totalSKS', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('IPK: ${ipk.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Status: $statusIPK', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
