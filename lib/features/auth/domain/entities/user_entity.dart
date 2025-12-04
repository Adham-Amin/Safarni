class UserEntity {
  final String imageUrl;
  final String name;
  final String email;

  UserEntity({required this.imageUrl, required this.name, required this.email});

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      imageUrl: json['imageUrl'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'imageUrl': imageUrl, 'name': name, 'email': email};
  }
}
