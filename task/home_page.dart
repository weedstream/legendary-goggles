import 'package:praktikum_pertemuan_10/task/about_page.dart';
import 'package:praktikum_pertemuan_10/task/biodata_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String _drinkFavorite = "...";
  Map<String, String> _userData = {
    'Nama': 'CEVA ALGIVARI SULAIMAN',
    'Nim': '21103080',
    'Alamat': 'BEKASI',
    'Prodi': 'SISTEM INFORMASI',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIODATA DIRI"),
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () =>
                  _openPageAbout(context = context, fullscreenDialog: true))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Biodata Mahasiswa:'),
              Text('NAMA    : ${_userData['Nama']}'),
              Text('NIM     : ${_userData['Nim']}'),
              Text('ALAMAT  : ${_userData['Alamat']}'),
              Text('PRODI   : ${_userData['Prodi']}'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BiodataPage(userData: _userData),
            ),
          ).then((updatedData) {
            if (updatedData != null) {
              setState(() {
                _userData = updatedData;
              });
            }
          });
        },
        tooltip: 'Edit Biodata',
        child: Icon(Icons.edit),
      ),
    );
  }
  void _openPageAbout(BuildContext context, {bool fullscreenDialog = true}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullscreenDialog,
            builder: (context) => AboutPage()));
  }
}
