import 'package:game_it_out_v2/common/exports/exports.dart';

class SignInRepository {
  final BuildContext context;

  SignInRepository({required this.context});

  Future<void> handleSignIn(VoidCallback navigate) async {
    try {
      final state = context.read<SignInBloc>().state;
      String emailAddress = state.email;
      String password = state.password;
      if (emailAddress.isEmpty) {
        toastInfo(msg: 'Please provide your email address');
        return;
      }
      if (password.isEmpty) {
        toastInfo(msg: 'Please enter your password');
        return;
      }
      final credentials =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if (credentials.user == null) {
        toastInfo(msg: 'Account does not exist');
        return;
      }
      final uid = FirebaseAuth.instance.currentUser!.uid;
      GBM.storageService.setString(AppConsts.STORAGE_USER_TOKEN_KEY, uid);
      navigate();
    } on FirebaseException catch (e) {
      if (e.code == ErrorCodeString.uNotFound) {
        toastInfo(msg: 'User does not exist');
      } else if (e.code == ErrorCodeString.wrongPW) {
        toastInfo(msg: 'Password is invalid');
      } else if (e.code == ErrorCodeString.invalidEmail) {
        toastInfo(msg: 'Email is invalid');
      }
    } catch (e) {
      toastInfo(msg: 'Network Error');
    }
  }
}
