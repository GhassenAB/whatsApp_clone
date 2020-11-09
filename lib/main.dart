import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WhatsApp Clone',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: SplashScreen(),
    );
  }
}
