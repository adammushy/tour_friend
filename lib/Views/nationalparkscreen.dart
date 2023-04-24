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
      appBar: AppBar(
        title: Text("National Parks"),
        // actionsIconTheme: IconThemeData(fill: double.infinity),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ItemList(
            name: "Ruaha NNational Parks",
            imageUrl: "assets/images/ruaha.jpg",
            location: "Iringa",
            details:
                '''Ruaha National Park is the largest national park in Tanzania making it the largest park in East Africa. The name of the park is derived from the Great Ruaha River, which flows along its southeastern margin and is the focus for game viewing.
             The park can be reached by private plane and there are 2 airstrips – Msembe airstrip at Msembe (National Park Headquarters), and Jongomeru Airstrip. 
             Noted animals found in this park are East African cheetah and lion, African leopard and wild dog, spotted hyena, giraffe, hippopotamus, African buffalo, and sable antelope. Since 2005, the protected area is considered a Lion Conservation Unit. The park is known for its large elephant population. More than 571 species of birds have been identified in the park. The only lodge inside the park is the Ruaha River Lodge that can be visited at any time of year. Wildlife converges on the dwindling water reserves and river in front of the Lodge. Game can be seen throughout the day from the veranda. ''',
          ),
          ItemList(
              name: "Mikumi",
              imageUrl: "assets/images/mikumi.jpg",
              details:
                  ''' Visit mikumi get adventure and enjoy your holiday time This is great place for you to visit take your time now to put this on your Tanzania and Africa experiences Welcome to mikumi Welcome to Tanzania ''',
              location: "Morogoro, Tanzania",)
        ],
      )),
    );
  }
}
