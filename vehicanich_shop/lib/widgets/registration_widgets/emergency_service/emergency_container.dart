import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/emergency_bloc/bloc/emergency_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/utils/page_transition/page_fade_transition.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/emergency_service/emergency_page.dart';

class EmergencyButton extends StatelessWidget {
  final String text;
  const EmergencyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmergencyBloc, EmergencyState>(
      listener: (context, state) {
        if (state is NavigatetoEmergencyservice) {
          Navigator.of(context)
              .push(FadeTransitionPageRoute(child: const EmergencyScreen()));
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<EmergencyBloc>().add(EmergencymaintaincePressed());
          // context.read<BodyBloc>().add(BodymaintaincePressed());
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            height: Mymediaquery().mediaqueryheight(0.07, context),
            decoration: BoxDecoration(
              color: Appallcolor().placeholderimagecolor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                CustomText(
                    text: text,
                    fontSize: 20,
                    color: Appallcolor().colorblack,
                    width: FontWeight.w500),
                SizedBox(
                  width: Mymediaquery().mediaquerywidth(0.14, context),
                ),
                const Icon(
                  Icons.arrow_right,
                  size: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
