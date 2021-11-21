import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: Column(
              children: [
                ListTile(
                  leading: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/man.png"),
                        radius: 1,
                      ),
                    ],
                  ),
                  title: const Text("data"),
                  subtitle: const Text("Online"),
                  trailing: const Icon(Icons.call),
                ),

                // IconButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   icon: Icon(
                //     Icons.arrow_back,
                //     color: Colors.black,
                //   ),
                // ),

                // CircleAvatar(
                //   backgroundImage: AssetImage("images/man.png"),
                //   maxRadius: 20,
                // ),
                // SizedBox(
                //   width: 12,
                // ),
                // Expanded(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Text(
                //         "Kriss Benwat",
                //         style: TextStyle(
                //             fontSize: 16, fontWeight: FontWeight.w600),
                //       ),
                //       SizedBox(
                //         height: 6,
                //       ),
                //       Text(
                //         "Online",
                //         style: TextStyle(
                //             color: Colors.grey.shade600, fontSize: 13),
                //       ),
                //     ],
                //   ),
                // ),
                // Icon(
                //   Icons.settings,
                //   color: Colors.black54,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
