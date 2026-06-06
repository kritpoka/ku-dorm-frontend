import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/data/datasource/datasource.dart';
import 'package:ku_dorm_frontend/data/model/user_model.dart';
import 'package:ku_dorm_frontend/data/service/service.dart';

@LazySingleton(as: Datasource)
class DatasourceImp extends Datasource {
  final Service service;

  DatasourceImp({required this.service});
  
  @override
  Future<UserModel> getUserInfo() async {
    final result = await service.getUserInfo();
    return UserModel.fromJson(result);
  }

}