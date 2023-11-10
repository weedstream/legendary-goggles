import 'package:praktikum_pertemuan_10/task/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _pass = "";
  String _errorMessage = "";
  @ override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text("Login Page"),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Container(
                height: 150,
                width: 190,
                padding: EdgeInsets.only(top: 40),
                child: Image.asset('asset/images/flutter-logo.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter valid email id as abc@gmail.com'),
            onChanged: (text){
            _email = text;
            },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 50),

            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),

              labelText: 'Password',
              hintText: 'Enter secure password'),
              onChanged: (text){
                _pass = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(_errorMessage, style: TextStyle(color: Colors.red),),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if(_email == "ceva@gmail.com" && _pass == "ceva" ){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage()));
                  }else{
                    _errorMessage = "Email atau Password Salah";
                  }
                });
              },
            child: Text(
              'Login', 
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}