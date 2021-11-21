import 'package:chat_ui/themes/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// ignore: camel_case_types
class statusData extends StatefulWidget {
  const statusData({Key? key}) : super(key: key);

  @override
  _statusDataState createState() => _statusDataState();
}

// ignore: camel_case_types
class _statusDataState extends State<statusData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        // marginBottom: 10, //margin bottom
        icon: Icons.camera_enhance, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: colorData.mainColor, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.grey, //background color when menu is expanded
        activeForegroundColor: Colors.white,
        closeManually: true, //close wen click
        children: [
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.camera),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Photo / Video',
          ),
          SpeedDialChild(
            child: const Icon(Icons.brush),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            label: 'Text',
            labelStyle: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.tab))
              ]))
        ],
      ),
    );
  }
}
