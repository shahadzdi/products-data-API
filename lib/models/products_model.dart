class ProductsModel {
  int? id;
  String? titel;
  String? description;
  String? category;
  double? price;
  double? rating;
  String? thumbnail;

  ProductsModel({
    this.id,
    this.titel,
    this.description,
    this.category,
    this.price,
    this.rating,
    this.thumbnail,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json["id"],
      titel: json['title'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      rating: json['rating'],
      //tags: json['tags'],
      thumbnail: json["thumbnail"],
    );
  }
}
