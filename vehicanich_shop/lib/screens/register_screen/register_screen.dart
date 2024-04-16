import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/location_bloc/location_bloc.dart';
import 'package:vehicanich_shop/screens/map_screen/map_page.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_textfields.dart';
import 'package:vehicanich_shop/utils/app_imagecontainer.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/location_container.dart';
import 'package:vehicanich_shop/widgets/sign_in_widgets/all_texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBLoc, LocationState>(
        listener: (context, state) {
          if (state is LocationFetching) {
            const Center(
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            );
          }
          if (state is NavigateToLocation) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MapScreen()));
          }
        },
        child: Scaffold(
            backgroundColor: Appallcolor().appbackgroundcolor,
            body: SingleChildScrollView(
                child: Column(children: [
              SizedBox(height: Mymediaquery().mediaqueryheight(0.15, context)),
              const MainText(text: '       Welcome to our \n community!'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.05, context)),
              const Smallheading(text: 'Details', width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Name'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Email'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'phone'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Whatsapp Number'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Shop Name'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              GestureDetector(
                  onTap: () {
                    context.read<LocationBLoc>().add(LocationButtonPressed());
                  },
                  child: const TextContainer(text: 'choose your location')),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Address', maxLines: 4),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Description', maxLines: 4),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Smallheading(text: 'working time', width: 0.2),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              Inputfield(
                  hinttext: 'starting time',
                  onTap: () {
                    showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                  }),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              Inputfield(
                  hinttext: 'closing time',
                  onTap: () {
                    showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                  }),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Smallheading(text: 'Proofs', width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const HintText(size: 0.13, text: 'upload MM'),
              const CustomContainer(width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Upi id number'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Smallheading(text: 'photo', width: 0.2),
              const HintText(size: 0.09, text: 'Banner photo'),
              const CustomContainer(width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const HintText(size: 0.09, text: 'logo photo'),
              const CustomContainer(width: 0.2),
            ]))));
  }
}
