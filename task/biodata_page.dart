import 'package:praktikum_pertemuan_10/task/home_page.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatefulWidget {
  final Map<String, String> userData;

  BiodataPage({required this.userData});

  @override
  _BiodataPageState createState() => _BiodataPageState();
}

class _BiodataPageState extends State<BiodataPage> {
  late TextEditingController _nameController;
  late TextEditingController _nimController;
  late TextEditingController _alamatController;
  late TextEditingController _prodiController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userData['Nama']);
    _nimController = TextEditingController(text: widget.userData['Nim']);
    _alamatController = TextEditingController(text: widget.userData['Alamat']);
    _prodiController = TextEditingController(text: widget.userData['Prodi']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Biodata Diri"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(labelText: 'Nim'),
            ),
            TextField(
              controller: _alamatController,
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            TextField(
              controller: _prodiController,
              decoration: InputDecoration(labelText: 'Prodi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Map<String, String> updatedData = {
                  'Nama': _nameController.text,
                  'Nim': _nimController.text,
                  'Alamat': _alamatController.text,
                  'Prodi': _prodiController.text,
                };
                Navigator.pop(context, updatedData);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nimController.dispose();
    _alamatController.dispose();
    _prodiController.dispose();
    super.dispose();
  }
}