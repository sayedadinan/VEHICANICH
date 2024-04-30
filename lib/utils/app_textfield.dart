import 'package:flutter/material.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';

class Inputfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String hinttext;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Icon? icon;
  final Color fillingcolor;
  const Inputfield({
    this.controller,
    super.key,
    this.label,
    required this.hinttext,
    this.keyboardType,
    this.validator,
    this.icon,
    required this.fillingcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:const BoxConstraints(maxWidth: 400),
      child: Padding(
        padding: EdgeInsets.only(
            left: Mymediaquery().mediaquerywidth(0.02, context),
            right: Mymediaquery().mediaquerywidth(0.02, context)),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: fillingcolor,
            filled: true,
            labelText: label,
            hintText: hinttext,
            suffixIcon: icon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
