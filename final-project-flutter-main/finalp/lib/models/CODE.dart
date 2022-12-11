class Code {
  String name;
  String image;
  String description;

  Code({required this.name, required this.image, required this.description});

  static List<Code> FrontEnd = [
    Code(name: "Swift", image: "", description: "iOS Coding Language"),
    Code(
      name: "Flutter",
      image: "",
      description: "cross platform development",
    ),
    Code(
      name: "Html",
      image: "",
      description: "Web development structure",
    )
  ];
}
