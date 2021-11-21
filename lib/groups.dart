import 'package:chat_ui/themes/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// ignore: camel_case_types
class groupsData extends StatefulWidget {
  const groupsData({Key? key}) : super(key: key);

  @override
  _groupsDataState createState() => _groupsDataState();
}

void doNothing(BuildContext context) {}

// ignore: camel_case_types
class _groupsDataState extends State<groupsData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        // marginBottom: 10, //margin bottom
        icon: Icons.groups, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: colorData.mainColor, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.grey, //background color when menu is expanded
        activeForegroundColor: Colors.white,
        closeManually: true, //close wen click
        children: [
          SpeedDialChild(
            child: const Icon(Icons.group_add),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'New Group',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
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
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      // An action can be bigger than the others.
                      flex: 2,
                      onPressed: doNothing,
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.archive,
                      label: 'Archive',
                    ),
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                    ),
                  ],
                ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: const ListTile(title: Text('Slide me')),
              ),
              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(1),

                // The start action pane is the one at the left or the top side.
                startActionPane: const ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: ScrollMotion(),

                  // All actions are defined in the children parameter.
                  children: [
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
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: DismissiblePane(onDismissed: () {}),
                  children: const [
                    SlidableAction(
                      // An action can be bigger than the others.
                      flex: 2,
                      onPressed: doNothing,
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.archive,
                      label: 'Archive',
                    ),
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                    ),
                  ],
                ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: const ListTile(title: Text('Slide me')),
              ),
              const Text("data"),
            ],
          )),
        ],
      ),
    );
  }
}
