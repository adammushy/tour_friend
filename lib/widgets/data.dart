import 'package:flutter/material.dart';


class WelcomeContents {
  String heading;
  String imageUrl;
  String details;

  WelcomeContents({
    required this.heading,
    required this.imageUrl,
    required this.details,
  });
}

List<WelcomeContents> welcomecontents = [
  WelcomeContents(
      heading: "Welcome",
      imageUrl: 'assets/icons/tour.png',
      details: "Experience the beauty of the country"),
];

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome to  Tour Friend",
    image: "assets/icons/nature1.png",
    desc: "The app that will give you all you the things you want to plan your next vacation in Tanzania",
  ),
  OnboardingContents(
    title: "Enjoy our five star service",
    image: "assets/icons/mountain.png",
    desc:
        "Get to know the nature of Tanzania",
  ),
  OnboardingContents(
    title: "Welcome to Tanzania",
        image: "assets/icons/nature2.png",

    desc: "",
  ),
];


class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hyatt.jpg',
    name: 'Hyatt Regency Hotel',
    address: 'Kivukoni,Dar es salaam',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/hyatt2.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel3.jpg',
    name: 'Hotel 3',
    address: '404 Great St',
    price: 240,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel4.jpg',
    name: 'Hotel 4',
    address: '404 Great St',
    price: 550,
  ),
];