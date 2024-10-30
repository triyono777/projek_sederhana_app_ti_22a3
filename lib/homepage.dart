import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_sederhana_app/login_page.dart';

class HomePage extends StatelessWidget {
  final box = GetStorage();

  void _logout(BuildContext context) {
    box.remove('isLoggedIn'); // Menghapus sesi login
    box.remove('email'); // Menghapus data email
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String? email = box.read('email'); // Membaca data email dari GetStorage

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome, $email',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
