import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour_friend/Views/homescreen.dart';
import 'package:tour_friend/welcome.dart';
import 'package:tour_friend/Views/servicescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/tour.png"),
              radius: 100,
            ),
            // child: Image.asset('assets/tour.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "TOUR FRIEND",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[400]),
            ),
          )
        ],
      ),
    );
  }
}

















// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:tour_friend/widgets/style.dart';

// class SplashScreen extends StatefulWidget {
//   Widget? child;
//   Color? iconBackgroundColor;
//   Text? text;
//   Widget? nextPage;
//   Timer? timer;
//   Gradient? gradient;
//   Color? backgroundColor;
//   Duration? duration;
//   double? circleHeight;


//   SplashScreen({
//     super.key,
//     required this.nextPage,
//     this.iconBackgroundColor,
//     this.child,
//     this.circleHeight,
//     this.timer,
//     this.gradient,
//     this.text,
//     this.duration = const Duration(seconds: 5),
//   });


//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initstate() {
//     super.initState();
//     Timer(
//       widget.duration!,
//       () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => widget.nextPage!,
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: widget.backgroundColor,
//               gradient: widget.gradient,
//             ),
//             child: Center(
//               // child: Column(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     Container(
//               //       height: widget.circleHeight,
//               //       width: widget.circleHeight,
//               //       decoration: BoxDecoration(
//               //         color: widget.iconBackgroundColor,
//               //         borderRadius:
//               //             BorderRadius.circular(widget.circleHeight!),
//               //       ),
//               //       child: widget.child,
//               //     ),
//               //     SizedBox(
//               //       height: 20,
//               //     ),
//               //     widget.text!,
//               //   ],
//               // ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }