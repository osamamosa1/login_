import 'package:clean_arch/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCases<Type,Parms>{
  Future<Either<Failure,Type>>Call(Parms parms);
}

class NoParms extends Equatable{
  @override
  List<Object?> get props => [];
}