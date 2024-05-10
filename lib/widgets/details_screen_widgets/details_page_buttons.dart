import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicahich_admin/blocs/bloc/current_status_bloc.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_custom_button.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';

class RejectedandAcceptButton extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const RejectedandAcceptButton({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: Mymediaquery().mediaquerywidth(0.23, context),
          child: CustomButton(
              color: const Color.fromARGB(255, 98, 217, 102),
              function: () {
                context
                    .read<CurrentStatusBloc>()
                    .add(ApprovedButtonPressed(documentId: shop.id));
                Navigator.of(context).pop();
              },
              text: 'accept',
              fontSize: Mymediaquery().mediaquerywidth(0.02, context),
              buttontextcolor: Colors.white,
              bordercolor: Colors.transparent),
        ),
        SizedBox(width: Mymediaquery().mediaquerywidth(0.02, context)),
        SizedBox(
          width: Mymediaquery().mediaquerywidth(0.23, context),
          child: CustomButton(
              color: Myappallcolor().emergencybuttoncolor,
              function: () {
                context
                    .read<CurrentStatusBloc>()
                    .add(RejectedButtonPressed(documentId: shop.id));
                Navigator.of(context).pop();
              },
              text: 'Reject',
              fontSize: Mymediaquery().mediaquerywidth(0.02, context),
              buttontextcolor: Colors.white,
              bordercolor: Colors.transparent),
        ),
      ],
    );
  }
}

class ApproveButton extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const ApproveButton({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
            color: const Color.fromARGB(255, 98, 217, 102),
            function: () {
              context
                  .read<CurrentStatusBloc>()
                  .add(ApprovedButtonPressed(documentId: shop.id));
              Navigator.of(context).pop();
            },
            text: 'accept',
            fontSize: Mymediaquery().mediaquerywidth(0.02, context),
            buttontextcolor: Colors.white,
            bordercolor: Colors.transparent),
      ],
    );
  }
}

class RejectedBUtton extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shop;
  const RejectedBUtton({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Mymediaquery().mediaquerywidth(0.29, context),
      child: CustomButton(
          color: Myappallcolor().emergencybuttoncolor,
          function: () {
            context
                .read<CurrentStatusBloc>()
                .add(RejectedButtonPressed(documentId: shop.id));
            Navigator.of(context).pop();
          },
          text: 'Reject',
          fontSize: Mymediaquery().mediaquerywidth(0.02, context),
          buttontextcolor: Colors.white,
          bordercolor: Colors.transparent),
    );
  }
}
