class Property {
  final String id;
  final String title;
  final String imageUrl;
  final String city;
  final String price;

  Property({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.city,
    required this.price,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'] ?? '',
      title: json['title'] ?? 'No Title',
      imageUrl: json['image'] ?? '',
      city: json['city'] ?? 'Unknown',
      price: json['price'] ?? '0',
    );
  }
}
