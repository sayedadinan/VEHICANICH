import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/service_bloc/bloc/service_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/utils/page_transition/page_fade_transition.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/serivice_widgets/service_items.dart';

class BodyServiceContainer extends StatelessWidget {
  final String text;
  const BodyServiceContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ServiceBloc, ServiceState>(
      listener: (context, state) {
        if (state is NavigatetoBodyservice) {
          Navigator.of(context)
              .push(FadeTransitionPageRoute(child: DropdownWithTextField()));
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<ServiceBloc>().add(BodymaintaincePressed());
        },
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
                width: Mymediaquery().mediaquerywidth(0.15, context),
              ),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
      ),
    );
  }
}
