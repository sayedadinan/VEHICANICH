import 'package:firebase_auth/firebase_auth.dart';
import 'package:vehicanich_shop/utils/constant_variables/textediting_controller.dart';

class FireBasePhoneAuth {
  final FirebaseAuth instance = FirebaseAuth.instance;

  phoneAuthentication() async {
    await instance.verifyPhoneNumber(
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException exception) {},
        codeSent: ((verificationId, forceResendingToken) {}),
        codeAutoRetrievalTimeout: (String verificationId) {},
        phoneNumber: phonecontroller.text.toString());
  }
}
