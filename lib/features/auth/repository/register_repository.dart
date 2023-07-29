import 'package:game_it_out_v2/common/exports/exports.dart';

class RegisterRepository {
  final BuildContext context;

  const RegisterRepository({required this.context});

  Future<void> handleRegister(VoidCallback navigate) async {
    try {
      final state = context.read<RegisterBloc>().state;
      String emailAddress = state.email;
      String password = state.password;
      String repeatPassword = state.repeatPassword;

      if (emailAddress.isEmpty) {
        toastInfo(msg: 'Please provide your email address');
        return;
      }

      if (password.isEmpty) {
        toastInfo(msg: 'Please enter your password');
        return;
      }

      if (repeatPassword.isEmpty) {
        toastInfo(msg: 'Please repeat your password');
        return;
      }

      if (password != repeatPassword) {
        toastInfo(msg: 'Password do not match');
        return;
      }

      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      if (credential.user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set({
          'email': emailAddress,
        });

        final uid = FirebaseAuth.instance.currentUser!.uid;
        GBM.storageService.setString(AppConsts.STORAGE_USER_TOKEN_KEY, uid);
        navigate();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == ErrorCodeString.weakPW) {
        toastInfo(msg: 'Weak password');
      } else if (e.code == ErrorCodeString.emailInUse) {
        toastInfo(msg: 'Email is already in use');
      } else if (e.code == ErrorCodeString.invalidEmail) {
        toastInfo(msg: 'Email is invalid');
      }
    } catch (e) {
      toastInfo(msg: 'Network Error');
    }
  }
}
