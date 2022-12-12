class Club {
  String name;
  String image;

  Club({
    required this.name,
    required this.image,
  });

  static List<Club> clubs = [
    Club(name: "Coded", image: "assets/images/Coded.jpeg"),
    Club(name: "Kuwait Codes", image: "assets/images/KuwaitCodes.png")
  ];
}
