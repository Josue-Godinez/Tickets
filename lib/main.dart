import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:venta_de_tickets/src/services/dbConnection.dart';
import 'package:venta_de_tickets/src/views/login/login.dart';
import 'src/util/extentions.dart';

void main() {
  DBConnection.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: FlutterSmartDialog.init(),
      theme: ThemeData(
        primaryColor: '#2B3B49'.toColor(),
      ),
      home: const Login(),
    );
  }
}
