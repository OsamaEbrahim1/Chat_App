part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class RegisterLoading extends AuthState {}
class RegisterSuccess extends AuthState {}
class RegisterFailure extends AuthState {
  final String errMessage;

  RegisterFailure({required this.errMessage});
}

class LoginLoading extends AuthState {}
class LoginSuccess extends AuthState {}
// ignore: must_be_immutable
class LoginFailure extends AuthState {
  String  errMessage;
  LoginFailure({required this.errMessage});
}
