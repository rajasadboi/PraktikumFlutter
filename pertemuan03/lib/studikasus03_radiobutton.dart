import 'package:flutter/material.dart';

class StudiKasus03RadioButton extends StatefulWidget {
  const StudiKasus03RadioButton({super.key});

  @override
  _StudiKasus03RadioButtonState createState() =>
      _StudiKasus03RadioButtonState();
}

class _StudiKasus03RadioButtonState extends State<StudiKasus03RadioButton> {
  String? selectedHokage; // Variabel untuk menyimpan pilihan Hokage
  String? imageUrl; // URL gambar yang akan dimuat

  // Data Hokage dan URL gambar
  final Map<String, String> hokageImages = {
    'Hokage 1':
        'https://static.wikia.nocookie.net/naruto/images/3/30/Hokage_Hashirama.png/revision/latest/scale-to-width-down/1911?cb=20140406065909&path-prefix=id',
    'Hokage 2':
        'https://cdn.idntimes.com/content-images/duniaku/post/20191219/kage-terkuat-tobirama-senju-4f785ff7a463c753eddd05d0c0e9da9b.jpg',
    'Hokage 3':
        'https://cdn.idntimes.com/content-images/community/2023/08/2906592-cropped-56965fbaa68adf470a17cc45ea5d328d-1c144a7a493a45ebf933a8015a055700_600x400.jpg',
    'Hokage 4':
        'https://img.koran-jakarta.com/images/article/masashi-kishimoto-bakal-buat-spin-off-hokage-keempat-minato-namikaze-230420120651.jpeg',
    'Hokage 5':
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2022/10/23/934786489.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studi Kasus RadioButton dan Gambar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...hokageImages.keys.map((String key) {
              return RadioListTile<String>(
                title: Text(key),
                value: key,
                groupValue: selectedHokage,
                onChanged: (String? value) {
                  setState(() {
                    selectedHokage = value;
                  });
                },
              );
            }).toList(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedHokage != null) {
                  setState(() {
                    imageUrl = hokageImages[selectedHokage!];
                  });
                }
              },
              child: const Text('Tampilkan Gambar'),
            ),
            const SizedBox(height: 20),
            if (imageUrl != null)
              Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                height: 250,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Center(child: Text('Gagal memuat gambar'));
                },
              ),
          ],
        ),
      ),
    );
  }
}
