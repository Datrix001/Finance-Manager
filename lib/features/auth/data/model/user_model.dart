class UserModel {
  final String id;
  final String? fullName;
  final String email;

  UserModel({required this.id, this.fullName, required this.email});

  factory UserModel.fromSupaBase(dynamic user) {
    return UserModel(
      id: user.id,
      email: user.email,
      fullName: user.userMetadata?['fullName'],
    );
  }
}
