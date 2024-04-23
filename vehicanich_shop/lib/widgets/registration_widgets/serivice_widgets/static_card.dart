import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/body_service/service_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/emergency_bloc/bloc/emergency_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/engine_bloc/bloc/engine_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/interior_service/bloc/interior_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/serivice_widgets/service_rate.dart';

class CustomInteriorStaticCard extends StatefulWidget {
  final String texts;
  CustomInteriorStaticCard({super.key, required this.texts});

  @override
  State<CustomInteriorStaticCard> createState() => _CustomInteriorStaticCard();
}

class _CustomInteriorStaticCard extends State<CustomInteriorStaticCard> {
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
                  icon: BlocProvider.of<InteriorBloc>(context)
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
                    context.read<InteriorBloc>().add(
                        InteriorEnableButtonPressed(serviceName: widget.texts));
                  },
                ),
                const SizedBox(width: 20), // Adjust spacing as needed
                CustomServiceTextField(
                  enabled: BlocProvider.of<InteriorBloc>(context)
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

class CustomBodyStaticCard extends StatefulWidget {
  final String texts;
  CustomBodyStaticCard({super.key, required this.texts});

  @override
  State<CustomBodyStaticCard> createState() => _CustomBodyStaticCard();
}

class _CustomBodyStaticCard extends State<CustomBodyStaticCard> {
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
                  icon: BlocProvider.of<BodyBloc>(context)
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
                    context.read<BodyBloc>().add(
                        BodyEnableButtonPressed(serviceName: widget.texts));
                  },
                ),
                const SizedBox(width: 20), // Adjust spacing as needed
                CustomServiceTextField(
                  enabled: BlocProvider.of<BodyBloc>(context)
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

class CustomEngineStaticCard extends StatefulWidget {
  final String texts;
  CustomEngineStaticCard({super.key, required this.texts});

  @override
  State<CustomEngineStaticCard> createState() => _CustomEngineStaticCard();
}

class _CustomEngineStaticCard extends State<CustomEngineStaticCard> {
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
                  icon: BlocProvider.of<EngineBloc>(context)
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
                    context.read<EngineBloc>().add(
                        EngineEnableButtonPressed(serviceName: widget.texts));
                  },
                ),
                const SizedBox(width: 20), // Adjust spacing as needed
                CustomServiceTextField(
                  enabled: BlocProvider.of<EngineBloc>(context)
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

class CustomEmergencyStaticCard extends StatefulWidget {
  final String texts;
  CustomEmergencyStaticCard({super.key, required this.texts});

  @override
  State<CustomEmergencyStaticCard> createState() =>
      _CustomEmergencyStaticCard();
}

class _CustomEmergencyStaticCard extends State<CustomEmergencyStaticCard> {
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
                  icon: BlocProvider.of<EmergencyBloc>(context)
                          .state
                          .newmpty
                          .contains(widget.texts)
                      ? Icon(
                          Icons.check_box,
                          color: Appallcolor().emergencybuttoncolor,
                          size: 33,
                        )
                      : Icon(
                          Icons.check_box_outline_blank,
                          color: Appallcolor().appbarbackgroundcolor,
                        ),
                  onPressed: () {
                    context.read<EmergencyBloc>().add(
                        EmergencyEnableButtonPressed(
                            serviceName: widget.texts));
                  },
                ),
                const SizedBox(width: 20), // Adjust spacing as needed
                CustomServiceTextField(
                  enabled: BlocProvider.of<EmergencyBloc>(context)
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
