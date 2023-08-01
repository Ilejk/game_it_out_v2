import 'package:game_it_out_v2/common/exports/exports.dart';

class ChangeEmailRepository {
  final BuildContext context;

  ChangeEmailRepository({required this.context});
  Future<void> handleChangeEmail(VoidCallback navigate) async {
    try {
      final state = context.read<ChangeEmailBloc>().state;
      String newEmailAddress = state.newEmail;

      String password = state.password;

      try {
        String? oldEmail = FirebaseAuth.instance.currentUser!.email;

        var currentUser = FirebaseAuth.instance.currentUser;

        if (oldEmail != newEmailAddress && newEmailAddress.isNotEmpty) {
          try {
            var credential = EmailAuthProvider.credential(
                email: oldEmail!, password: password);
            await currentUser!
                .reauthenticateWithCredential(credential)
                .then((value) {
              currentUser.updateEmail(newEmailAddress);
            });
          } catch (e) {
            toastInfo(msg: 'Something went wrong');
          }

          try {
            await FirebaseFirestore.instance
                .collection('users')
                .doc(currentUser!.uid)
                .update({
              'email': newEmailAddress,
            });
          } catch (e) {
            toastInfo(msg: 'Something went wrong');
          }
        }

        toastInfo(msg: 'Email has been changed');
        navigate();
      } on FirebaseAuthException catch (e) {
        if (e.code == ErrorCodeString.weakPW) {
          toastInfo(msg: 'Weak password');
        }
      }
    } catch (e) {
      toastInfo(msg: 'Network Error');
    }
  }
}
