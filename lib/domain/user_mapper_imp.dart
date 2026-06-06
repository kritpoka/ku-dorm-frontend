import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/data/model/user_model.dart';
import 'package:ku_dorm_frontend/domain/entity/user_entity.dart';
import 'package:ku_dorm_frontend/domain/user_mapper.dart';

@LazySingleton(as: UserMapper)
class UserMapperImp extends UserMapper {
  @override
  UserEntity fromModel(UserModel user) {
    return UserEntity(
      fullName: '${user.firstName} ${user.lastName}'
    );
  }
}