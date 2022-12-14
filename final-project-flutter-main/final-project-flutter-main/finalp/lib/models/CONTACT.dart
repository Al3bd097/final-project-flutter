class Contact {
  String name;
  String image;
  String description;

  Contact({required this.name, required this.image, required this.description});

  static List<Contact> contacts = [
    Contact(
        name: "name",
        image: "assets/images/Russell .jpg",
        description: "iOS Developer"),
    Contact(
      name: "name",
      image: "assets/images/Russell .jpg",
      description: "Flutter Developer",
    ),
    Contact(
      name: "name",
      image: "assets/images/Russell .jpg",
      description: "Web Developer",
    )
  ];
}
