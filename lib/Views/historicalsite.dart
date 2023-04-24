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
                name: "Christ Church Cathedral",
                imageUrl: "assets/images/church.jpg",
                details:
                    '''Built over the slave market remarkable architecture. 
                Some columns were put in upside down when the architect was away and guides will point them out. 
                Livingston funeral and the Livingstone cross mad from wood of the tree he was buried beneath. 
                Striking to see the preserved portion of the slave market under the church.''',
                location: "Stone town, Zanzibar"),
            listItems(
                name: "Olduvai Gorge",
                imageUrl: "assets/images/olduvai.jpg",
                location: "Ngorongoro Conservation",
                details:
                    '''This is one of the most important archaeological site on earth. 
                The geological strata exposed in the gorge reveal a remarkable record of animal and human evolution from about 2 million until 15,000 years ago. 
                Among the significant finds from Olduvai are the range of stone tool types, the thousands of animal fossils- both extinct and extant species- and fossil bones of hominids (pre- Homo sapiens) and early Homo sapiens. 
                The hominid fossils show the evolution of humankind over a 2 million year time span and provide a sense of our recent emergence in the world as modern humans.'''),
            listItems(
                name: "Slave Market",
                imageUrl: "assets/images/slave.jpg",
                location: "Stone Town,Zanzibar",
                details:
                    '''The Heritage Centre therefore among other things aims at promoting tolerance, reconciliation and an inclusive society, bridging social and ethnic divides by telling the story of this dark chapter in the region’s history in an open and factual way. 
                The creation of the Heritage Centre, and making it accessible to school children, who are the country’s future leaders, is also aimed to promote interfaith and inter-communal dialogue and understanding. Furthermore The Site is an important tourist destination, and by improving visitors’ facilities at the site and making it more informative and stimulating, the tourism industry as a whole will benefit, creating jobs and wealth, and helping to reduce poverty. 
                The Heritage Centre among other things is also benefiting many people as it is a great opportunity to promote interfaith relations in Zanzibar.'''),
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
