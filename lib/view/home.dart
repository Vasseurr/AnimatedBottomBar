// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'home_page.dart';
import 'widgets/custom_scaffold_with_animated_fab.dart';
import 'mail.dart';
import 'profile_page.dart';
import 'favourite_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.put(HomeController());
    return CustomScaffold(
      type: 1,
      body: Obx(() => IndexedStack(
            index: _homeController.tabIndex,
            children: [
              //pages
              HomePage(),
              FavouritePage(),
              MailPage(),
              ProfilePage(),
            ],
          )),
    );
  }
}
