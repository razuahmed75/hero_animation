// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/walpaper.dart';

class One extends StatefulWidget {
  static const String path = "One";
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  List images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
  ];
  List tags = [
    "1",
    "2",
    "3",
    "4",
    "5",
    /* tag gulu vinno hte hbe. na hole libraryTe same tag er error asbe */
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Display"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.more_vert)],
      ),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Walpaper.path, arguments: {
                  "image": images[index],
                  "tag": tags[index],
                }); /* prottek image er jnno vinno vinno tag pathate hbe.*/
                /* simple route er khetreo tai*/
              },
              child: Hero(
                tag: "${tags[index]}",
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover)),
                ),
              ),
            );
          }),
    );
  }
}
