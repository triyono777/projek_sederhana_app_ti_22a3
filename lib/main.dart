import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:async';

import 'package:projek_sederhana_app/splash_screen.dart';

void main() async {
  await GetStorage.init(); // Inisialisasi GetStorage
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash & Login with Session',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
