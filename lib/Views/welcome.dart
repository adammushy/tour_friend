import 'package:flutter/material.dart';
import '../widgets/data.dart';
import '../Views/homescreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    // WelcomeContents welcomeContents = welcomecontents;
    return Scaffold(
      // appBar: ,
      body: Column(children: [
        Text(welcomecontents[0].heading),
        SizedBox(
          height: 50,
        ),
        Container(
            height: 200,
            width: 200,
            child: Image.asset(welcomecontents[0].imageUrl)),
        SizedBox(
          height: 50,
        ),
        Text(welcomecontents[0].details),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text("START"),
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.green.shade500),
        )
      ]),
    );
  }
}
