import 'package:clean_arch/core/error/failures.dart';
import 'package:clean_arch/features/login/domain/entities/login.dart';
import 'package:clean_arch/features/login/domain/repositories/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginRepoImp extends LoginRepository{
  @override
  Future<Either<Failure, Login>> login(username, password) {
    throw UnimplementedError();
  }

}