import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/data/service/service.dart';

@LazySingleton(as: Service)
class ServiceImp extends Service {
  @override
  Future<Map<String, dynamic>> getUserInfo() async {
    await Future.delayed(const Duration(seconds: 2));
    return {
      'id': '0',
      'firstName': 'Krit',
      'lastName': 'Poka',
      'email': 'krit.pok@ku.th',
      'studentID': '6610401926',
    };
  }
}
