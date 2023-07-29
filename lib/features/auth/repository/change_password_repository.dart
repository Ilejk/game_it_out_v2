import 'package:game_it_out_v2/common/exports/exports.dart';

class ChangePasswordRepository {
  final BuildContext context;

  ChangePasswordRepository({required this.context});
  Future<void> handleChanePassword(VoidCallback navigate) async {
    try {
      final state = context.read<ChangePasswordBloc>().state;
      String oldPassword = state.oldPassword;
      String newPassword = state.newPassword;

      if (oldPassword.isEmpty) {
        toastInfo(msg: 'Please enter old password');
        return;
      }

      if (newPassword.isEmpty) {
        toastInfo(msg: 'Please enter new password');
        return;
      }

      if (newPassword == oldPassword) {
        toastInfo(
            msg: 'New password has to be different from your old password');
        return;
      }

      try {
        String? email = FirebaseAuth.instance.currentUser!.email;
        var credential =
            EmailAuthProvider.credential(email: email!, password: oldPassword);
        var currentUser = FirebaseAuth.instance.currentUser;
        await currentUser!
            .reauthenticateWithCredential(credential)
            .then((value) {
          currentUser.updatePassword(newPassword);
        });
        toastInfo(msg: 'Password has been changed');
        navigate();
      } on FirebaseAuthException catch (e) {
        if (e.code == ErrorCodeString.weakPW) {
          toastInfo(msg: 'Weak Password');
        }
      }
    } catch (e) {
      toastInfo(msg: 'Network Error');
    }
  }
}
