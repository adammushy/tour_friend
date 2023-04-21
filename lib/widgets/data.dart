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
    title: "Karibu katika application yetu ya Smart Kilimo",
    image: "assets/icons/nature1.png",
    desc: "Kumbuka kujisajili kama wewe ni mkulima iliuweze kupata uwezo wa kupata taarifa.",
  ),
  OnboardingContents(
    title: "Furahia huduma katika mfumo wetu.",
    image: "assets/icons/mountain.png",
    desc:
        "Unaweza kupata taarifa mbalimbali zinazohusu masuala ya kilimo.",
  ),
  OnboardingContents(
    title: "Karibu kwenye mfumo uwe mkulima wa kisasa",
        image: "assets/icons/nature2.png",

    desc: "karibu ujisajili.",
  ),
];
