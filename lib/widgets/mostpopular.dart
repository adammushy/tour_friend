import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tour_friend/Views/homescreen.dart';
import '../Components/homecontent.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // children: [Expanded(child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: destinations.length,itemBuilder: (context, index) {Destination destination = destinations[index]; return GestureDetector(onTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>DestinationPage(destination: destination))),)} ),),),],
          ),
        )
      ],
    );
  }
}
