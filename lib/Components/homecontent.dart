class Destination {
  String imageUrl;
  String name;
  String city;
  String description;
  // List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.name,
    required this.city,
    required this.description,
    // required this.activities,
  });
}

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/tour.png',
      name: 'Maha',
      city: 'Tanzania',
      description: 'hellow welcome in tanga'),
      Destination(
      imageUrl: 'assets/tour.png',
      name: 'tanga',
      city: 'Tanzania',
      description: 'hellow welcome in tanga'),
Destination(
      imageUrl: 'assets/tour.png',
      name: 'tanga',
      city: 'Tanzania',
      description: 'hellow welcome in tanga'),

];
