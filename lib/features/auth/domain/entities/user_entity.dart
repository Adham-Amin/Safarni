class UserEntity {
  final num id;
  final String imageUrl;
  final String name;
  final String email;

  UserEntity({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.email,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'],
      imageUrl: json['imageUrl'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'imageUrl': imageUrl, 'name': name, 'email': email};
  }
}
