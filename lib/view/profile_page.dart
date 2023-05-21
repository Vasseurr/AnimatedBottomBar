// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    String imageLink =
        "https://www.seekpng.com/png/detail/1010-10108361_person-icon-circle.png";
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.25,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageLink),
            ),
          ),
          Spacer(),
          textField("Kullanıcı Adı", "Vasseurr", context),
          textField("İsim", "Okan", context),
          textField("Soyisim", "Rüzgar", context),
          textField("E-posta", "okan@gmail.com", context),
          textField("Telefon Numarası", "+90 (538) 856 8569", context),
          textField("Adres", "Hürriyet Mahallesi 67/8 Bahçelievler/İstanbul",
              context),
          Spacer(),
        ],
      ),
    );
  }

  Container textField(String fieldName, String value, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.blue.shade900, width: 2))),
      child: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(fieldName)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.15),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(value))
          ],
        ),
      ),
    );
  }
}
