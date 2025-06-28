class UserModel {
  final int id;
  final String name;
  final String email;
  final String mobileNumber;
  final String dateOfBirth;
  final String image;
  final bool gender;

  UserModel({
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.dateOfBirth,
    required this.image,
    required this.gender,
    required this.id,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      mobileNumber: map['mobileNumber'] ?? '',
      dateOfBirth: map['dateOfBirth'] ?? '',
      image: map['image'] ?? '',
      gender: map['gender'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'mobile number': mobileNumber,
      'dateofbirth': dateOfBirth,
      'image': image,
      'gender': gender,
    };
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
