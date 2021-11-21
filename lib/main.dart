import 'package:chat_ui/themes/color_data.dart';
import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat Ui",
      theme: ThemeData(
        brightness: Brightness.light,
        dividerTheme: DividerThemeData(
          space: 12,
          thickness: 0.3,
          indent: 20,
          color: colorData.mainColor,
        ),
        fontFamily: "poppins",
        // primarySwatch: Colors.teal,
      ),
      home: const ChatApp(),
    );
  }
}
