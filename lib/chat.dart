import 'package:chat_ui/themes/color_data.dart';
import 'package:chat_ui/view/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'data/chat_model.dart';
import 'view/chatscreen.dart';

// ignore: camel_case_types
class chatData extends StatefulWidget {
  const chatData({Key? key}) : super(key: key);

  @override
  _chatDataState createState() => _chatDataState();
}

void doNothing(BuildContext context) {}

// ignore: camel_case_types
class _chatDataState extends State<chatData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        // marginBottom: 10, //margin bottom
        icon: Icons.chat, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: colorData.mainColor, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor: Colors
            .grey, //background color when menu is expanded activeForegroundColor: Colors.white,
        closeManually: true, //close wen click
        children: [
          SpeedDialChild(
              child: const Icon(Icons.contacts),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              label: "My Contact"),
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.contactless),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'New Chat',
          ),
          SpeedDialChild(
            child: const Icon(Icons.person_add),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            label: 'Add Contact',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ChatModel.dummyData.length,
        itemBuilder: (context, index) {
          ChatModel model = ChatModel.dummyData[index];

          return Column(
            children: <Widget>[
              // const Divider(),

              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(0),

                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const ScrollMotion(),

                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  // All actions are defined in the children parameter.
                  children: const [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xff075E55),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Archive',
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                // endActionPane: const ActionPane(
                //   motion: ScrollMotion(),
                //   children: [
                //     SlidableAction(
                //       // An action can be bigger than the others.
                //       flex: 2,
                //       onPressed: doNothing,
                //       backgroundColor: Color(0xFF7BC043),
                //       foregroundColor: Colors.white,
                //       icon: Icons.archive,
                //       label: 'Archive',
                //     ),
                //     SlidableAction(
                //       onPressed: doNothing,
                //       backgroundColor: Color(0xFF0392CF),
                //       foregroundColor: Colors.white,
                //       icon: Icons.save,
                //       label: 'Save',
                //     ),
                //   ],
                // ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(model.avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        model.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                          // widht
                          ),
                      Text(
                        model.datetime,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  subtitle: Text(model.message),
                  trailing: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: colorData.accentColor),
                    child: const Center(
                        child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
