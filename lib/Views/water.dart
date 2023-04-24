import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/itemlist.dart';

class WaterBodies extends StatefulWidget {
  const WaterBodies({super.key});

  @override
  State<WaterBodies> createState() => _WaterBodiesState();
}

class _WaterBodiesState extends State<WaterBodies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("National Parks"),
        // actionsIconTheme: IconThemeData(fill: double.infinity),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ItemList(
              name: "Materuni waterfall",
              imageUrl: "assets/images/materuni.jpg",
              location: "Moshi, Kilimanjaro",
              details:
                  '''Amazing 70 meter second highest waterfalls in Tanzania. 
            It is located on the slopes of Kilimanjaro mountain. Materuni is the home of the Chagga tribe and is still an authentic tribal village. 
            This charming place is just 15km away from Moshi Town and is the last village before the Kilimanjaro National Park Wonderful view of the waterfalls. 
            Be prepared for a good walk and slight hike. The route is rich in plantations of banana, mango, avocado, corn, sweet potato and coffee Pleasant visit'''),
          ItemList(
              name: "Tumbatu Island",
              imageUrl: "assets/images/tumbatu",
              details: "",
              location: "Zanzibar"),
              ItemList(name: "Kikuletwa", imageUrl: "assets/images/kikuletwa.jpg", details: "", location: "Moshi, Kilimanjaro")
              
        ],
      )),
    );
  }
}
