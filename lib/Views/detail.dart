import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../Components/homecontent.dart';
import '../widgets/data.dart          ';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Hotels",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  child: Text(
                    // "",
                    "See all",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorItems.blueChaose,
                        letterSpacing: 0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: hotels.length,
                      itemBuilder: (context, index) {
                        Hotel hotel = hotels[index];
                        return InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                _whiteContainer(context, hotel),
                                _image(hotel),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
  Positioned _image(Hotel hotel) {
    return Positioned(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          hotel.imageUrl,
          height: 200,
          width: 380,
          fit: BoxFit.fill,
          color: Colors.white.withOpacity(0.9),
          colorBlendMode: BlendMode.colorBurn,
        ),
      ),
    );
  }

  Positioned _whiteContainer(BuildContext context, Hotel hotel) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 380,
        height: 100,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.black87, offset: Offset(0.0, 2.0), blurRadius: 6.0)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${hotel.address}",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    hoverColor: Colors.blue,
                    onPressed: () {
                      return null;
                    },
                    icon: Icon(Icons.shopify_outlined),
                  ),
                  Text(
                    "\$${hotel.price}/night",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorItems {
  static const Color blueChaose = Color(0xff6699ff);
  static const Color sweetDreams = Color(0xffb4ddf8);
  static const Color sparkling = Color(0xffd3d6d9);
  static const Color heavyMetal = Color(0xff878a8c);
}
