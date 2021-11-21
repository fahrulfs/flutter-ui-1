import 'package:chat_ui/themes/color_data.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'groups.dart';
import 'status.dart';
import 'chat.dart';
import 'call.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  var _currentIndex = 0;
  final selectedNav = [
    const chatData(),
    const groupsData(),
    const statusData(),
    const callData(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorData.clearColor,
        toolbarHeight: 60,
        elevation: 0,
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(15),
        //         bottomRight: Radius.circular(15))),
        leading: Icon(
          Icons.ac_unit,
          color: colorData.mainColor,
        ),
        title: const Text(
          "Whatsapp",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.system_update))
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       const DrawerHeader(
      //           child: Center(
      //         child: CircleAvatar(
      //           backgroundColor: Colors.white,
      //           backgroundImage: AssetImage("images/man.png"),
      //           radius: 60,
      //         ),
      //       )
      //           // Image(image: AssetImage("images/man.png")),
      //           ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(vertical: 10),
      //         child: Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 5),
      //                   child: Text(
      //                     "Fahrul FS",
      //                     style: TextStyle(
      //                         fontSize: 18,
      //                         color: colorData.mainColor,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: EdgeInsets.symmetric(horizontal: 5),
      //                   child: Icon(
      //                     Icons.edit,
      //                     size: 20,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.symmetric(vertical: 1),
      //               child: Text(
      //                 "+6281234567",
      //                 style: TextStyle(fontSize: 15),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         selectedTileColor: colorData.mainColor,
      //         onTap: () {
      //           colorData();
      //         },
      //         leading: const Icon(Icons.person),
      //         title: const Text("Account"),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         leading: const Icon(Icons.privacy_tip),
      //         title: const Text("Privacy"),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         leading: const Icon(Icons.change_circle),
      //         title: const Text("Change Number"),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         leading: const Icon(Icons.exit_to_app),
      //         title: const Text("Log Out"),
      //       ),
      //       const ListTile(
      //         title: Text("v.1.2.5"),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.chat),
            title: const Text("Chat"),
            selectedColor: colorData.mainColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.group),
            title: const Text("Group"),
            selectedColor: colorData.mainColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.camera_enhance),
            title: const Text("Status"),
            selectedColor: colorData.mainColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.call),
            title: const Text("Call"),
            selectedColor: colorData.mainColor,
          ),
        ],
      ),
      body: Column(
        children: [
          // Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey[600]),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey[300],
                contentPadding: const EdgeInsets.all(15),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: selectedNav[_currentIndex])),
        ],
      ),
    );
  }
}
