import 'package:dartz/dartz.dart';
import 'package:clean_arch/core/error/failures.dart';

import '../entities/login.dart';

abstract class LoginRepository{
Future<Either<Failure,Login>> login(username,password);
}