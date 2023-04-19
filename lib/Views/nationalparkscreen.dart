import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/itemlist.dart';

class NationalParkScreen extends StatefulWidget {
  const NationalParkScreen({super.key});

  @override
  State<NationalParkScreen> createState() => _NationalParkScreenState();
}

class _NationalParkScreenState extends State<NationalParkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ItemList(
            name: "maharaja",
            imageUrl: "assets/images.tour.png",
            location: "India",
            details: "holla",
          )
        ],
      )),
    );
  }
}
