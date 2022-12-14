class Club {
  String name;
  String image;
  String imagebg;

  Club({required this.name, required this.image, required this.imagebg});

  static List<Club> clubs = [
    Club(
        name: "Kuwait Codes",
        image: "assets/images/KC-1.png",
        imagebg: "assets/images/Kuwaitcodesbgg.png"),
    Club(
        name: "Coded",
        image: "assets/images/Coded.jpeg",
        imagebg: "assets/images/codedjuniors.png"),
    Club(
        name: "Unicode",
        image: "assets/images/unicode.52236d23.jpg",
        imagebg: "assets/images/unicode.52236d23.jpg")
  ];
}
