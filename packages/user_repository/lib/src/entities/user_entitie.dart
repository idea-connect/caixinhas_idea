class MyUserEntity {
  final String userId;
  final String name;
  final String email;
  final bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.name,
    required this.email,
    required this.hasActiveCart,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'],
      email: doc['email'],
      name: doc['name'],
      hasActiveCart: doc['hasActiveCart'] ,
    );
  }
}