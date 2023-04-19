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
