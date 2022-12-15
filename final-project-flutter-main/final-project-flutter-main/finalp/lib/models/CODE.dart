class Code {
  String name;
  String image;
  String imageBg;
  String description;
  String videosNames;
  String videoLinks;

  Code(
      {required this.name,
      required this.image,
      required this.imageBg,
      required this.description,
      required this.videosNames,
      required this.videoLinks});

  static List<Code> FrontEnds = [
    // Swift
    Code(
      name: "Swift",
      image: "assets/images/Swift-2-512.webp",
      imageBg: "assets/images/Screenshot 2022-12-13 at 22.51.03.png",
      description: "iOS Coding Language",
      videosNames: "How to use Xcode in SwiftUI project | Bootcamp #1",
      videoLinks: "https://youtu.be/N-ntKJdVNBs",
    ),
    // Flutter
    Code(
      name: "Flutter",
      image: "assets/images/flutter-logo-transparent.png.webp",
      imageBg: "assets/images/swiftBg.jpg",
      description: "cross platform development",
      videosNames: "Flutter Tutorial for Beginners #1 - Intro & Setup",
      videoLinks: "https://youtu.be/1ukSR1GRtMU",
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      imageBg: "assets/images/html.png",
      description: "Web development structure",
      videosNames: "",
      videoLinks: "",
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
        imageBg: "assets/images/phpbg.png",
        videosNames: "",
        videoLinks: ""),
    // django
    Code(
      name: "django",
      image: "assets/images/Django-Logo.png",
      imageBg: "assets/images/djangobg.png",
      description: "Backend Development",
      videosNames: "",
      videoLinks: "",
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      imageBg: "assets/images/swiftBg.jpg",
      description: "Web development structure",
      videosNames: "",
      videoLinks: "",
    )
  ];
  ////////////////////
  //AllEnds
  ////////////////////

  static List<Code> AllEnds = [
    // Swift
    Code(
      name: "Swift",
      image: "assets/images/Swift-2-512.webp",
      imageBg: "assets/images/swiftBg.jpg",
      description: "iOS Coding Language",
      videosNames: "How to use Xcode in SwiftUI project | Bootcamp #1",
      videoLinks: "https://youtu.be/N-ntKJdVNBs",
    ),
    // Flutter
    Code(
      name: "Flutter",
      image: "assets/images/flutter-logo-transparent.png.webp",
      imageBg: "assets/images/Screenshot 2022-12-13 at 22.51.03.png",
      description: "cross platform development",
      videosNames: "Flutter Tutorial for Beginners #1 - Intro & Setup",
      videoLinks: "https://youtu.be/1ukSR1GRtMU",
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      imageBg: "assets/images/html.png",
      description: "Web development structure",
      videosNames: "",
      videoLinks: "",
    ),
    // Php
    Code(
        name: "Php",
        image: "assets/images/PHP-logo.svg.png",
        description: "BackEnd Development",
        imageBg: "assets/images/phpbg.png",
        videosNames: "",
        videoLinks: ""),
    // django
    Code(
      name: "django",
      image: "assets/images/Django-Logo.png",
      imageBg: "assets/images/djangobg.png",
      description: "Backend Development",
      videosNames: "",
      videoLinks: "",
    ),
    // Html
    Code(
      name: "Html",
      image: "assets/images/HTML5_logo_and_wordmark.svg.png",
      imageBg: "assets/images/swiftBg.jpg",
      description: "Web development structure",
      videosNames: "",
      videoLinks: "",
    )
  ];
}
