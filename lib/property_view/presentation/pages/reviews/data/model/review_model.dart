class ReviewModel {
  final String image;
  final String name;
  final String time;
  final double rating;
  final String message;
  bool like;

  ReviewModel(
    this.image,
    this.name,
    this.time,
    this.rating,
    this.message,
    this.like,
  );
}
