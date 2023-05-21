// ignore_for_file: prefer_const_constructors

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animatedbb/view/widgets/special_fab_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class CustomScaffold extends StatefulWidget {
  Widget body;
  int type;
  CustomScaffold({Key? key, required this.type, required this.body})
      : super(key: key);

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final HomeController _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar(context),
        floatingActionButton: widget.type == 1
            ? SpecialFABButton(type: 1)
            : SpecialFABButton(type: 2),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.blue.shade900,
          splashColor: Colors.white,
          icons: const [Icons.home, Icons.star, Icons.mail, Icons.person],
          activeIndex: _homeController.tabIndex,
          inactiveColor: Colors.white,
          activeColor: Colors.white,
          gapLocation: GapLocation.end,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) {
            setState(() {
              _homeController.tabIndex = index;
            });
          },
        ),
        body: widget.body);
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      centerTitle: true,
      title: Text(
        "Animated Components",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        InkWell(
            onTap: () {
              if (widget.type == 1) {
              } else {
                Get.back();
              }
            },
            child: Icon(
              Icons.format_align_right,
              color: Colors.blue[900],
              size: 40,
            ))
      ],
    );
  }
}
