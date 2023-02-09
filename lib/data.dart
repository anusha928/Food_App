class Images {
  final String title;
  final String thumbnailurl;
  final String comments;
  final String rating;
  final String time;

  Images(
      {required this.title,
      required this.thumbnailurl,
      required this.comments,
      required this.rating,
      required this.time});
}

final List<Images> recomended_images = [
  Images(
      title: "Assorted Salads",
      thumbnailurl:
          "https://images.pexels.com/photos/1640773/pexels-photo-1640773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "3467",
      rating: "4.8",
      time: "35"),
  Images(
      title: "Club Sandwich Served",
      thumbnailurl:
          "https://images.pexels.com/photos/1600711/pexels-photo-1600711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "783",
      rating: "3.9",
      time: "32"),
  Images(
      title: "Prown",
      thumbnailurl:
          "https://images.pexels.com/photos/1998920/pexels-photo-1998920.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "398",
      rating: "4.3",
      time: "45"),
  Images(
      title: "Stacked Brownies",
      thumbnailurl:
          "https://images.pexels.com/photos/2067396/pexels-photo-2067396.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "348",
      rating: "4.7",
      time: "30"),
  Images(
      title: "Burger With Spinach and Cheese",
      thumbnailurl:
          "https://images.pexels.com/photos/1199956/pexels-photo-1199956.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "998",
      rating: "4.2",
      time: "45"),
  Images(
      title: "Pizza",
      thumbnailurl:
          "https://images.pexels.com/photos/3053082/pexels-photo-3053082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      comments: "87",
      rating: "5",
      time: "40"),
];
