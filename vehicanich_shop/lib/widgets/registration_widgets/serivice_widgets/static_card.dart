import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/service_bloc/bloc/service_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/serivice_widgets/service_rate.dart';

class CustomStaticCard extends StatefulWidget {
  final String texts;
  CustomStaticCard({super.key, required this.texts});

  @override
  State<CustomStaticCard> createState() => _CustomStaticCardState();
}

class _CustomStaticCardState extends State<CustomStaticCard> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        color: Appallcolor().textcolor,
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 230,
                  child: CustomText(
                    width: FontWeight.w300,
                    color: Appallcolor().colorblack,
                    fontSize: 25,
                    text: widget.texts,
                  ),
                ),
                IconButton(
                  icon: BlocProvider.of<ServiceBloc>(context)
                          .state
                          .newmpty
                          .contains(widget.texts)
                      ? Icon(
                          Icons.check_box,
                          color: Appallcolor().appbarbackgroundcolor,
                          size: 33,
                        )
                      : Icon(
                          Icons.check_box_outline_blank,
                          color: Appallcolor().appbarbackgroundcolor,
                        ),
                  onPressed: () {
                    context
                        .read<ServiceBloc>()
                        .add(EnableButtonPressed(serviceName: widget.texts));
                  },
                ),
                const SizedBox(width: 20), // Adjust spacing as needed
                CustomServiceTextField(
                  enabled: BlocProvider.of<ServiceBloc>(context)
                      .state
                      .newmpty
                      .contains(widget.texts),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
