import 'package:ku_dorm_frontend/domain/entity/user_entity.dart';

abstract class UserState {}

class UserInit extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final UserEntity userEntity;

  UserLoaded({required this.userEntity});
}

class UserLoadFailed extends UserState {
  final String message;

  UserLoadFailed({required this.message});
}