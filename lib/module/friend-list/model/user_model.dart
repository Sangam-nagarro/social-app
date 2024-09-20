class UserModel {
  final String name;
  final String phoneNumber;
  const UserModel({required this.name, required this.phoneNumber});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['Name'] ?? '', phoneNumber: json['Phone'] ?? '');
  }
}
