// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    email: json['email'] as String,
    id: json['id'] as String?,
    firstName: json['firstName'] as String,
    isAdmin: json['isAdmin'] as bool,
    lastName: json['lastName'] as String,
    password: json['password'] as String,
    subscriptionExpiry: json['subscriptionExpiry'] as int?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
      'id': instance.id,
      'isAdmin': instance.isAdmin,
      'subscriptionExpiry': instance.subscriptionExpiry,
    };