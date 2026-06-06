import 'package:ku_dorm_frontend/data/model/user_model.dart';
import 'package:ku_dorm_frontend/domain/entity/user_entity.dart';

abstract class UserMapper {
  UserEntity fromModel(UserModel user);
}