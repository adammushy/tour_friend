class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  // List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    // required this.activities,
  });
}

List<Destination> destination = [
  Destination(
      imageUrl: 'assets/tour.png',
      city: 'tanga',
      country: 'Tanzania',
      description: 'hellow welcome in tanga'),
];
