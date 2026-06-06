import 'package:ku_dorm_frontend/data/model/user_model.dart';

abstract class Repository {
  Future<UserModel> getUserInfo();
}