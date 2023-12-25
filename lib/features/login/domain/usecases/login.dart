import 'package:clean_arch/core/usecases/usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../repositories/login_repo.dart';

class Login implements UseCases<Login,LoginParms>{
  final LoginRepository loginRepository;
  Login(this.loginRepository);
  @override
  Future<Either<Failure, Login>> Call(LoginParms parms) {
    // TODO: implement Call
    throw UnimplementedError();
  }
}
class LoginParms extends Equatable{
  final String username,password;
  LoginParms(this.username, this.password);
  @override
  // TODO: implement props
  List<Object?> get props => [];

}