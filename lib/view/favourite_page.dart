// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<String> names = [
    "Sefiller",
    "Uçurtma Avcısı",
    "1984",
    "Hayvan Çiftliği",
    "Son Ada"
  ];
  List<bool> isFavourited = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Text(names[index]),
            trailing: InkWell(
              onTap: () {
                setState(() {
                  isFavourited[index] = !isFavourited[index];
                });
              },
              child: Icon(
                Icons.favorite,
                color: isFavourited[index] == false ? Colors.grey : Colors.red,
              ),
            ),
          ),
        );
      },
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02,
      ),
      itemCount: 5,
    );
  }
}
