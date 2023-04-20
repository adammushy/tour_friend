import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '';

class DetailScreen extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final String details;

  const DetailScreen({
    super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 248, 20)),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Hero(
                tag: imageUrl,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover),
                  ),
                  // child: Image.asset(imageUrl),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Text(
                location,
                style: TextStyle(color: Colors.black,
                                fontSize: 24,
                                ),
              ),
            ),SizedBox(height: 16.0,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 52.0,
                child: Text(details),
              ),
            )
          ],
        )

        // Column(children: [

        //   // Text(name),
        //   // Image.asset(imageUrl),
        //   //     Text(location),
        //   //     Text(details)

        // ],
        // ),
        );
  }
}
