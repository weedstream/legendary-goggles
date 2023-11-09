import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Nama'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Jenis Kelamin'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Alamat'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Hobi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menyimpan biodata di sini
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
