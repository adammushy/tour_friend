import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '';

class DetailScreen extends StatefulWidget {
  final String name;
  final String location;
  final String imageUrl;
  final String details;

  const DetailScreen({
    super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.details,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // List<String> paymentMethod = ['Mastercard', 'Visa'];
  final _formKey = GlobalKey<FormState>();
  String paymentMethod = 'Master';
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: ListView(
          children: [
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                widget.name.toUpperCase(),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 248, 20)),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Hero(
                tag: widget.imageUrl,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    image: DecorationImage(
                        image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                  ),
                  // child: Image.asset(imageUrl),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Text(
                widget.location,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 52.0,
                child: Text(
                  widget.details,
                  maxLines: 10,
                  style: TextStyle(
                      fontFamily: '', color: Colors.grey, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    bookScreen(context);
                  },
                  child: Text("Book Now"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                ),
              ),
            )
          ],
        )

        // Column(children: [

        //   // Text(name),
        //   // Image.asset(imageUrl),
        //   //     Text(location),
        //   //     Text(details)

        // ],
        // ),
        );
  }

  bookScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              // width: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, style: BorderStyle.solid)),
              child: Form(
                // autovalidateMode:Null,
                key: _formKey,
                child: SizedBox(
                  width: 100,
                  child: AlertDialog(
                    // shape:Box,
                    title: Text("Book now"),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: DropdownButtonFormField(
                              // value: "",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Choose method';
                                }
                                return null;
                              },
                              hint: Text("Choose Payment method"),
                              onChanged: (newValue) {
                                setState() {
                                  paymentMethod = newValue.toString();
                                }
                              },
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'Mastercard',
                                  child: Text("Mastercard"),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Visa',
                                  child: Text("Visa"),
                                ),
                              ],
                            ),
                            // child: DropdownButton<String>(
                            //   hint: Text('Select payment method'),
                            //   icon: Icon(Icons.arrow_drop_down),
                            //   iconSize: 36,
                            //   isExpanded: true,underline: SizedBox(),style: TextStyle(color: Colors.black,fontSize: 15),value:paymentMethod.toString(),
                
                            // ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                width: 150,
                                child: TextFormField(
                                  maxLength: 15,
                                  style: TextStyle(fontSize: 16.0),
                                  controller: cardNumberController,
                                  decoration: InputDecoration(
                                    labelText: 'Card Number',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your Card number';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 16.0),
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your cvv';
                                    } else if (value.length != 3) {
                
                                    }
                                    return null;
                                  },
                                  controller: cvvController,
                                  decoration: InputDecoration(
                                    labelText: 'Cvv',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextFormField(
                              // initialValue: "ellow",
                              controller: emailController,
                              maxLines: 1,
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  labelText: 'email'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Email';
                                } else if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    cvvController.clear();
                                    emailController.clear();
                                    cardNumberController.clear();
                                    Fluttertoast.showToast(
                                      msg: 'Form submitted successfully',
                                      timeInSecForIosWeb: 10,
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      backgroundColor:
                                          Color.fromARGB(255, 117, 117, 117),
                                      textColor: Colors.white,
                                    );
                                    await Future.delayed(Duration(seconds: 1));
                                    Navigator.of(context).pop();
                
                                    print("cleared");
                                  }
                
                                  // return null;
                                },
                                child: Text(
                                  "Submit",
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    ).then((value) {
      // MESSAGE TO POP SHOWING A SUCCESSFUL
      if (value != null) {
        Fluttertoast.showToast(
          msg: value.toString(),
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Color.fromARGB(255, 41, 7, 233),
          textColor: Colors.white,
        );
        print("clean ");
      }
    });
    ;
  }
}
