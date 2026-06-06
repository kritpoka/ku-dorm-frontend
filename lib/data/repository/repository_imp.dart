import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/data/datasource/datasource.dart';
import 'package:ku_dorm_frontend/data/model/user_model.dart';
import 'package:ku_dorm_frontend/data/repository/repository.dart';

@LazySingleton(as: Repository)
class RepositoryImp extends Repository {
  final Datasource datasource;

  RepositoryImp({required this.datasource});

  @override
  Future<UserModel> getUserInfo() async {
    return await datasource.getUserInfo();
  }
}