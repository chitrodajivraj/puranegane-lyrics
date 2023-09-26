import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: drawerData());
  }

  Widget drawerData() {
    return SafeArea(
      child: Container(
        width: 320,
        height: Get.height,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
            color: gray,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: const Stack(
          children: [
             Column(
              children:  [
                // DrawerHeader(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



Widget drawerData() {
  return SafeArea(
    child: Container(
      width: 320,
      height: Get.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          color: gray,
          borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft:  Radius.circular(10))),
      child: const Stack(
        children:  [
          Column(
            children:  [
              // DrawerHeader(),
            ],
          ),
        ],
      ),
    ),
  );
}
