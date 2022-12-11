class Code {
  String name;
  String image;
  String description;

  Code({required this.name, required this.image, required this.description});

  static List<Code> FrontEnds = [
    Code(
        name: "Swift",
        image: "assets/images/Swift-2-512.webp",
        description: "iOS Coding Language"),
    Code(
      name: "Flutter",
      image: "assets/images/flutter-logo-transparent.png.webp",
      description: "cross platform development",
    ),
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      description: "Web development structure",
    )
  ];

  static List<Code> BackEnds = [
    Code(
        name: "Php",
        image: "assets/images/PHP-logo.svg.png",
        description: "BackEnd Development"),
    Code(
      name: "django",
      image: "assets/images/Django-Logo.png",
      description: "Backend Development",
    ),
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      description: "Web development structure",
    )
  ];
}
