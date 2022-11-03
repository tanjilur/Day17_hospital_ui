class Hospitall {
  String name;
  String address;
  String img;

  Hospitall(
    this.name,
    this.address,
    this.img,
  );

  static List<Hospitall> hospital_listInfo() {
    return [
      Hospitall("Lab Aid", "Gulshan", "assets/images/p1.jpg"),
      Hospitall("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospitall("Delta", "Dhanmondi", "assets/images/p3.jpg"),
      Hospitall("Square", "Mirpur", "assets/images/p6.jpg"),
      Hospitall("Medinova", "Dhanmondi", "assets/images/p4.jpg"),
      Hospitall("Lab Aid", "Dhanmondi", "assets/images/p5.jpg")
    ];
  }
}
