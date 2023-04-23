import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.account_circle_outlined,
                size: 82,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: password1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: password2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              child: ElevatedButton(
                child: const Text('Register'),
                onPressed: () {
                  print('I\'m Clicked');
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Login')),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/images/google.png'),
                  ),
                  Text(
                    'Register with Google',
                    style: TextStyle(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
