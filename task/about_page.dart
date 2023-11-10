import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'asset/images/elon_musk.jpg'), // Ganti dengan path gambar Anda
                    radius: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'CEVA ALGIVARI SULAIMAN',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '21103080',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
