import 'package:flutter/material.dart';
import 'konversi.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final List<String?> grades = List<String?>.filled(12, null);
  final List<String> options = ['A', 'B', 'B+', 'C', 'C+', 'D', 'E'];


  final List<String> mataKuliah = [
    'PBO2',
    'Teknologi Multimedia',
    'Analisis Desain',
    'Teknik Kompilasi',
    'Analisis Desain',
    'Teknik Kompilasi',
    'Interaksi Manusia dan Komputer',
    'Statistik dan Probalitas',
    'Ecommerce',
    'Kecerdasan Buatan',
    'Rekayasa Perangkat Lunak',
    'Visual 3',
  ];

  void calculateResults() {
    final konversi = Konversi();
    double totalSKS = 0;

    for (var grade in grades) {
      if (grade != null) {
        totalSKS += konversi.sksMatkul(grade);
      }
    }

    double ipk = totalSKS / grades.length;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(totalSKS: totalSKS, ipk: ipk),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Nilai Mata Kuliah')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mataKuliah.length,
                itemBuilder: (context, index) {
                  return DropdownButtonFormField<String>(
                    value: grades[index],
                    decoration: InputDecoration(
                      labelText:
                          mataKuliah[index], 
                    ),
                    items: options
                        .map((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        grades[index] = value;
                      });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: calculateResults,
              child: const Text('Hitung Nilai'),
            ),
          ],
        ),
      ),
    );
  }
}
