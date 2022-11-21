// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Walpaper extends StatefulWidget {
  static const String path = "Walpaper";
  // final String? imaged;
  // final String? taged;
  // const Walpaper({Key? key, this.imaged, this.taged}) : super(key: key);

  @override
  State<Walpaper> createState() => _WalpaperState();
}

class _WalpaperState extends State<Walpaper> {
  @override
  Widget build(BuildContext context) {
    var imaged =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var taged =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Display"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "${taged["tag"]}",
              child: Image(
                image: AssetImage("${imaged["image"]}"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
