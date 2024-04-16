import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

displayErrorMotionToast(
    BuildContext context, String labelerror, String errormessage) {
  MotionToast.error(
    title: Text(
      labelerror,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    animationDuration: Duration(seconds: 3),
    description: Text(errormessage),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0.3),
    width: 300,
    height: 80,
    dismissable: false,
  ).show(context);
}

class MotionSnackbarSuccess extends StatelessWidget {
  const MotionSnackbarSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  displaySuccessMotionToast(BuildContext context, String text) {
    MotionToast toast = MotionToast(
      primaryColor: Colors.green,
      description: Text(
        text,
        style: const TextStyle(fontSize: 12),
      ),
      dismissable: true,
      // height: 220,
      displaySideBar: false,
    );
    toast.show(context);
    // Future.delayed(const Duration(seconds: 4)).then((value) {
    //   toast.closeOverlay();
    // });
  }
}
