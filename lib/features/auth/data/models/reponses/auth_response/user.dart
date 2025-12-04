class User {
	int? id;
	String? name;
	String? email;
	dynamic phone;
	dynamic location;
	bool? isVerified;
	dynamic emailVerifiedAt;
	String? profilePhotoUrl;
	String? photo;
	String? photoThumb;
	String? photoPreview;
	List<dynamic>? documents;
	List<String>? roles;
	List<dynamic>? socialProviders;
	String? createdAt;
	String? updatedAt;

	User({
		this.id, 
		this.name, 
		this.email, 
		this.phone, 
		this.location, 
		this.isVerified, 
		this.emailVerifiedAt, 
		this.profilePhotoUrl, 
		this.photo, 
		this.photoThumb, 
		this.photoPreview, 
		this.documents, 
		this.roles, 
		this.socialProviders, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory User.fromJson(Map<String, dynamic> json) => User(
				id: json['id'] as int?,
				name: json['name'] as String?,
				email: json['email'] as String?,
				phone: json['phone'] as dynamic,
				location: json['location'] as dynamic,
				isVerified: json['is_verified'] as bool?,
				emailVerifiedAt: json['email_verified_at'] as dynamic,
				profilePhotoUrl: json['profile_photo_url'] as String?,
				photo: json['photo'] as String?,
				photoThumb: json['photo_thumb'] as String?,
				photoPreview: json['photo_preview'] as String?,
				documents: json['documents'] as List<dynamic>?,
				roles: json['roles'] as List<String>?,
				socialProviders: json['social_providers'] as List<dynamic>?,
				createdAt: json['created_at'] as String?,
				updatedAt: json['updated_at'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'email': email,
				'phone': phone,
				'location': location,
				'is_verified': isVerified,
				'email_verified_at': emailVerifiedAt,
				'profile_photo_url': profilePhotoUrl,
				'photo': photo,
				'photo_thumb': photoThumb,
				'photo_preview': photoPreview,
				'documents': documents,
				'roles': roles,
				'social_providers': socialProviders,
				'created_at': createdAt,
				'updated_at': updatedAt,
			};
}
