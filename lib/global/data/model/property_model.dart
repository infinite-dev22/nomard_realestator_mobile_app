

class PropertyModel {
  List<String> images;
  String name;
  String type;
  String location;
  String leaseType;
  double price;
  double rating;
  bool isFavorite;

  PropertyModel(
    this.images,
    this.name,
    this.type,
    this.location,
    this.leaseType,
    this.price,
    this.rating,
    this.isFavorite,
  );
}
