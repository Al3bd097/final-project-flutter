class Contact {
  String name;
  String image;
  String description;

  Contact({required this.name, required this.image, required this.description});

  static List<Contact> contacts = [
    Contact(name: "name", image: "image", description: "iOS Developer"),
    Contact(
      name: "name",
      image: "image",
      description: "Flutter Developer",
    ),
    Contact(
      name: "name",
      image: "image",
      description: "Web Developer",
    )
  ];
}
