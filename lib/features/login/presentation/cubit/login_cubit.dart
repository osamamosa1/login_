
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginUser({
    required String username,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      emit(LoginSuccess());
    }  catch (e) {
        emit(LoginFailure(errMessage: 'error'));
    }
  }
}
