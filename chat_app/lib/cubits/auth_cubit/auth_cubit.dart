import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());


  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      // ignore: unused_local_variable
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure(errMessage: 'weak-password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure(errMessage: 'email-already-in-use'));
      }
    } on Exception catch (e) {
      // TODO
      emit(RegisterFailure(errMessage: 'something went wrong'));
    }
  }

  
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      // ignore: unused_local_variable
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFailure(errMessage: 'user-not-found' ));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFailure(errMessage: 'wrong-password' ));
      }
    // ignore: unused_catch_clause
    } on Exception catch (e) {
      emit(LoginFailure(errMessage: 'something went wrong' ));
    }
  }
}
