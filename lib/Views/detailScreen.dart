
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
 
  const DetailScreen({super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.details,});
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      
      Text(name),
      Image.asset(imageUrl),
          Text(location),
          Text(details)

    ],),);
  }
  

}