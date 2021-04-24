
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';


@immutable
class User {
  final bool isInitialValue;
  final FirebaseUser data;

  const User._(this.data, this.isInitialValue);
  factory User.create(FirebaseUser data) => User._(data, false);

  static const initial = User._(null, true);
}