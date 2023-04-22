import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'detailScreen.dart';
import '../widgets/itemlist.dart';

class HistoricalSite extends StatefulWidget {
  const HistoricalSite({super.key});
  // String name;
  // String imageUrl;

  @override
  State<HistoricalSite> createState() => _HistoricalSiteState();
}

class _HistoricalSiteState extends State<HistoricalSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Historical site'),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            listItems(
                name: "mahale",
                imageUrl: "assets/images/tour.png",
                location: "Tanga",
                details: "hellow tanzania"),

            // listItems(
            //   name: "",
            //   imageUrl: "",
            // ),
            listItems(
                name: "Bagamoyo",
                imageUrl: "assets/images/tour.png",
                details: "msoga oner",
                location: "Dar es salaam"),
            listItems(
                name: "Baitu la Ajabu",
                imageUrl: "assets/images/tour.png",
                location: "Zanzibar",
                details: "karibu zanzibar"),
            listItems(
                name: "Kondoa Irangi",
                imageUrl: "assets/images/tour.png",
                location: "Dodoma",
                details: "michorro ya mapangoni"),
          ],
        )));
  }

  Widget listItems({required name, location, imageUrl, details}) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(children: [
          Container(height: 150, child: Image.asset(imageUrl)),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              name: name,
              details: details,
              imageUrl: imageUrl,
              location: location,
            ),
          ),
        );
      },
    );
  }
}
