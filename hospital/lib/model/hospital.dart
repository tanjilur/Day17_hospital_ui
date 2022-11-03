class Hospital {
  String name;
  String Address;
  String img;

  Hospital(this.name, this.Address, this.img);

  static List<Hospital> hospital_info() {
    return [
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p5.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p6.jpg"),
    ];
  }

  static List<Hospital> most_popular() {
    return [
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p5.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p6.jpg"),
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p5.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p6.jpg"),
    ];
  }
}
