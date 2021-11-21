import 'package:chat_ui/themes/color_data.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class callData extends StatefulWidget {
  const callData({Key? key}) : super(key: key);

  @override
  _callDataState createState() => _callDataState();
}

// ignore: camel_case_types
class _callDataState extends State<callData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorData.mainColor,
        child: const Icon(Icons.call),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("data"),
        ],
      ),
    );
  }
}
