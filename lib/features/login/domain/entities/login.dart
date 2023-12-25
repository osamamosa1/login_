import 'package:equatable/equatable.dart';
class Login extends Equatable{
  Login({required this.email,required this.id,});
  final String email;
  final int id;


  @override
  List<Object?> get props => [email,id];

}

