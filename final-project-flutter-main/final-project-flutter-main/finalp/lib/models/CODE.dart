class Code {
  String name;
  String image;
  String description;
  List<String> videosNames;
  List<String> videoLinks;

  Code(
      {required this.name,
      required this.image,
      required this.description,
      required this.videosNames,
      required this.videoLinks});

  static List<Code> FrontEnds = [
    // Swift
    Code(
      name: "Swift",
      image: "assets/images/Swift-2-512.webp",
      description: "iOS Coding Language",
      videosNames: [
        "How to use Xcode in SwiftUI project | Bootcamp #1",
        "Adding Text in SwiftUI | Bootcamp #2"
      ],
      videoLinks: [
        "https://youtu.be/N-ntKJdVNBs",
        "https://youtu.be/RKfkG01x79w"
      ],
    ),
    // Flutter
    Code(
      name: "Flutter",
      image: "assets/images/flutter-logo-transparent.png.webp",
      description: "cross platform development",
      videosNames: [
        "Flutter Tutorial for Beginners #1 - Intro & Setup",
        "Flutter Tutorial for Beginners #2 - Flutter Overview"
      ],
      videoLinks: [
        "https://youtu.be/1ukSR1GRtMU",
        "https://youtu.be/bKueYVtV0eA"
      ],
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      description: "Web development structure",
      videosNames: [""],
      videoLinks: [""],
    ),
  ];
  //
  //
  // BackEnds
  //
  //
  static List<Code> BackEnds = [
    // Php
    Code(
      name: "Php",
      image: "assets/images/PHP-logo.svg.png",
      description: "BackEnd Development",
      videosNames: [""],
      videoLinks: [""],
    ),
    // django
    Code(
      name: "django",
      image: "assets/images/Django-Logo.png",
      description: "Backend Development",
      videosNames: [""],
      videoLinks: [""],
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      description: "Web development structure",
      videosNames: [""],
      videoLinks: [""],
    )
  ];
}
