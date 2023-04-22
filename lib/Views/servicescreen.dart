import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_friend/Views/homescreen.dart';
import 'package:tour_friend/Views/welcome.dart';
import 'package:tour_friend/Views/nationalparkscreen.dart';
import 'package:tour_friend/Views/historicalsite.dart';
// import 'package:tour_friend/Views/homescreen.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  late int _currentIndex;
  int _selected = 3;
  final double _notchedValue = 4;

  @override
  void initState() {
    super.initState();
    _currentIndex = 3;
  }

  void changePage(int? index) {
    setState(() {
      _currentIndex = index!;
      if (index == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: InkWell(
                    child: Image.asset(semanticLabel:"List Category" ,
                      'assets/tour.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                //     Divider(
                //   height: 20,
                //   color: Colors.grey.shade600,
                // ),
                Expanded(
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        makeItem(
                            name: "National Parks",
                            image: 'assets/tour.png',
                            index: 1),
                        SizedBox(
                          height: 20,
                        ),
                        makeItem(
                          name: "Historical Sites",
                          image: 'assets/images/tour.png',
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: ColorItems.blueChaose,
          onPressed: () {},
          child: const Icon(Icons.search)),
      bottomNavigationBar: _buildBottomBar(),
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
  @override
  Widget makeItem({name, image, index}) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.1)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              // print(name);
              if (name == "National Parks") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NationalParkScreen()));
              } else if (name == "Historical Sites") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistoricalSite()));
              }
            },
          ),
        ),
      ],
    );

  }

  
}

class ColorItems {
  static const Color blueChaose = Color(0xff6699ff);
  static const Color sweetDreams = Color(0xffb4ddf8);
  static const Color sparkling = Color(0xffd3d6d9);
  static const Color heavyMetal = Color(0xff878a8c);
}