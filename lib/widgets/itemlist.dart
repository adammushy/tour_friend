import 'package:flutter/material.dart';
import '../Views/nationalparkscreen.dart';
import '../Views/detailScreen.dart';

class ItemList extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String details;
  final String location;
  // String name;

  const ItemList({super.key, required this.name, required this.imageUrl,required this.details,required this.location});

  @override
  Widget build(BuildContext context) {
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
