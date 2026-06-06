import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/data/repository/repository.dart';
import 'package:ku_dorm_frontend/domain/entity/user_entity.dart';
import 'package:ku_dorm_frontend/domain/user_mapper.dart';

@lazySingleton
class Usecase {
  final Repository repository;
  final UserMapper userMapper;

  Usecase({required this.repository, required this.userMapper});

  Future<UserEntity> getUserInfo() async {
    final result = await repository.getUserInfo();
    return userMapper.fromModel(result);
  }
}