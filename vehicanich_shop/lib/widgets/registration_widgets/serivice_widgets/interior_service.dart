import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/services/interior_service/bloc/interior_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_textfields.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/serivice_widgets/service_description_and_texts.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/serivice_widgets/static_card.dart';

class InteriorServiceScreen extends StatelessWidget {
  const InteriorServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appallcolor().appbackgroundcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: BlocBuilder<InteriorBloc, InteriorState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.serviceNameList.length + 2,
              itemBuilder: (context, index) {
                if (index < state.serviceNameList.length) {
                  return CustomInteriorStaticCard(
                      texts: state.serviceNameList[index]);
                } else if (index == state.serviceNameList.length) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 108,
                      top: 10,
                    ),
                    child: AnimatedButton(
                      selectedBackgroundColor:
                          Appallcolor().buttonforgroundcolor,
                      backgroundColor: Appallcolor().colorblack,
                      borderWidth: 3,
                      borderColor: Appallcolor().textcolor,
                      animationDuration: const Duration(seconds: 1),
                      onPress: () {
                        interiorshowAddMoreBottomSheet(context);
                      },
                      width: 200,
                      text: 'Add more',
                      selectedTextColor: Colors.black,
                      transitionType: TransitionType.RIGHT_TOP_ROUNDER,
                      textStyle: TextStyle(
                        fontSize: 28,
                        letterSpacing: 1,
                        color: Appallcolor().textcolor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(49.0),
                        color: Appallcolor().appbarbackgroundcolor),
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: SizedBox(
                        child: BodyMaintainceDescription(),
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

void interiorshowAddMoreBottomSheet(BuildContext context) {
  TextEditingController firstsTextFieldController = TextEditingController();
  showModalBottomSheet(
    elevation: 20,
    backgroundColor: Appallcolor().textcolor,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Inputfield(
              controller: firstsTextFieldController,
              hinttext: 'Give your services',
              keyboardType: TextInputType.name,
              label: 'service',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String firstText = firstsTextFieldController.text;
                context.read<InteriorBloc>().add(
                    InteriorServiceAddingButtonPressed(
                        newservicename: firstText));
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      );
    },
  );
}
