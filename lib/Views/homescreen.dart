import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_friend/Views/nationalparkscreen.dart';
import 'package:tour_friend/Views/servicescreen.dart';
import 'package:tour_friend/Views/historicalsite.dart';
import 'package:tour_friend/Views/welcome.dart';
import '../widgets/mostpopular.dart';
import '../Components/homecontent.dart';
import '../Views/profilescreen.dart';
import '../Views/detail.dart';
import '../widgets/data.dart';
// import 'package:travel_ui/widgets/destinations.dart';
// import 'package:travel_ui/widgets/hotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // Future<bool> _onWillPop() async {
  //   return (await showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: new Text('Are you sure?'),
  //           content: new Text('Do you want to exit an App'),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () =>
  //                   Navigator.of(context).pop(false), //<-- SEE HERE
  //               child: new Text('No'),
  //             ),
  //             TextButton(
  //               onPressed: () =>
  //                   Navigator.of(context).pop(true), // <-- SEE HERE
  //               child: new Text('Yes'),
  //             ),
  //           ],
  //         ),
  //       )) ??
  //       false;
  // }

  late int _currentIndex;
  int _selected = 0;
  final double _notchedValue = 5;

  List<IconData> icons = [
    FontAwesomeIcons.landmarkDome,
    // FontAwesomeIcons.pet,
    // Icons.pets,
    FontAwesomeIcons.bed,

    Icons.forest,
    FontAwesomeIcons.mountain,
    // FontAwesomeIcons.plane,
    // FontAwesomeIcons.personWalking,
    // FontAwesomeIcons.personBiking
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      _currentIndex = index!;
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceScreen(),
          ),
        );
      }
      else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
      }
      
    });
  }

// ####################MAIN SCREEN SCAFFOLD
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: ListView(
            children: [
              _buildTitle(context),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: icons
                    .asMap()
                    .entries
                    .map((e) => _buildIcon(e.key))
                    .toList(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // const MostPopular(city:'', details: '', name: '', imageUrl: '',),
             MostPopular(),
              const SizedBox(
                height: 20.0,
              ),
              // const HotelWidget(),
              Column(
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
                  "",
                  // "See all",
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
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (context, index) {
                      Hotel hotel = hotels[index];
                      return InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Stack(
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
    )
              // WillPopScope(child: Welcome(), onWillPop:  () async => Future.value(false),),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: ColorItems.blueChaose,
            onPressed: () {},
            child: const Icon(Icons.search)),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  BubbleBottomBar _buildBottomBar() {
    return BubbleBottomBar(
      opacity: .2,
      currentIndex: _currentIndex,
      onTap: changePage,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      elevation: 8,
      fabLocation: BubbleBottomBarFabLocation.end,
      hasNotch: true,
      hasInk: true,
      inkColor: Colors.black12,
      items: const [
        BubbleBottomBarItem(
            backgroundColor: ColorItems.blueChaose,
            icon: Icon(
              FontAwesomeIcons.house,
              color: Colors.black,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.house,
              color: ColorItems.blueChaose,
            ),
            title: Text("Home")),
        BubbleBottomBarItem(
            backgroundColor: ColorItems.blueChaose,
            icon: Icon(
              Icons.map,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.map,
              color: ColorItems.blueChaose,
            ),
            title: Text("Near me")),
        BubbleBottomBarItem(
            backgroundColor: ColorItems.blueChaose,
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.person,
              color: ColorItems.blueChaose,
            ),
            title: Text("Profile")),
        BubbleBottomBarItem(
            backgroundColor: ColorItems.blueChaose,
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.menu,
              color: ColorItems.blueChaose,
            ),
            title: Text("Menu"))
      ],
    );
  }
  Positioned _image( hotel) {
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

  Positioned _whiteContainer(BuildContext context, hotel) {
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

  Padding _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 160.0, left: 20.0, top: 30.0),
      child: Text(
        "Where would you like to visit",
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildIcon(int index) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selected == index
              ? ColorItems.sweetDreams
              : ColorItems.sparkling),
      child: IconButton(
        onPressed: () {
          setState(() {
            setState(() {
              _selected = index;
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoricalSite(),
                  ),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NationalParkScreen(),
                  ),
                );
              }
            });
          });
        },
        icon: Icon(
          icons[index],
          color: _selected == index
              ? ColorItems.blueChaose
              : ColorItems.heavyMetal,
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
