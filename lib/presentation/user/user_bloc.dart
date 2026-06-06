import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ku_dorm_frontend/domain/usecase.dart';
import 'package:ku_dorm_frontend/presentation/user/user_event.dart';
import 'package:ku_dorm_frontend/presentation/user/user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState>{
  final Usecase usecase;
  UserBloc({required this.usecase}) : super(UserInit()) {
    on<GetUserInfo>((event, emit) async {
      emit(UserLoading());
      try {
        final result = await usecase.getUserInfo();
        emit(UserLoaded(userEntity: result));
      } catch (e) {
        emit(UserLoadFailed(message: e.toString()));
      }
    });
  }
}