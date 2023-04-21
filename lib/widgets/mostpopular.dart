import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tour_friend/Views/homescreen.dart';
import '../Views/detailScreen.dart';
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
              // Text(
              //   "See all",
              //   style: Theme.of(context)
              //       .textTheme
              //       .titleLarge
              //       ?.copyWith(fontWeight: FontWeight.bold),
              // ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: destinations.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    Destination destination = destinations[index];
                    return GestureDetector(
                      child: Padding(
                        
                        padding: EdgeInsets.all(15.0),
                        child: Container(
                          // decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.grey.shade500,offset: Offset(0, 2.0),blurRadius: 6.0)]),

                          child: Stack(
                            
                            children: [
                              _whiteContainer(context, destination),
                              _image(destination),
                              _textInImg(destination, context)
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Positioned _textInImg(Destination destination, BuildContext context) {
    return Positioned(
      top: 150,
      left: 10,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          
            "",
            // "${destination.name}",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            " ",
            // "${destination.city}",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Color.fromARGB(255, 8, 8, 8),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Positioned _image(Destination destination) {
    return Positioned(
      child: Hero(
        
        tag: destination.imageUrl,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "${destination.imageUrl}",
            height: 200,
            width: 200,
            fit: BoxFit.fill,
            color: Colors.white.withOpacity(0.9),
            colorBlendMode: BlendMode.colorBurn,
          ),
        ),
      ),
    );
  }

  Positioned _whiteContainer(BuildContext context, Destination destination) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(221, 119, 117, 117),
              offset: Offset(0.0, 2.0),
              blurRadius: 6.0)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 10),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                // " ",
                "${destination.name}",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color.fromARGB(255, 8, 8, 8), fontWeight: FontWeight.bold),
              ), Text(
                // " ",
                "${destination.city}",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color.fromARGB(255, 8, 8, 8), fontWeight: FontWeight.bold),
              ),
                  // Text(
                  //   "${destination.description}",
                  //   style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  //       color: Colors.black, fontWeight: FontWeight.w600),
                  // ),
                ],
              ),
              SizedBox(width: 2,),

              Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 
                  IconButton(onPressed: (){return null;}, icon:Icon(Icons.shopping_cart,semanticLabel: "Book",)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
