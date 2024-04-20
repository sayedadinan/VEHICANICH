import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/location_bloc/location_bloc.dart';
import 'package:vehicanich_shop/screens/map_screen/map_page.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_loadingindicator.dart';
import 'package:vehicanich_shop/utils/app_textfields.dart';
import 'package:vehicanich_shop/utils/drop_down_with_textfield.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/banner_photo_container.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/service_button.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/licence_imagecontainer.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/logo_image_container.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/mm_image_container.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/utils/page_transition/page_fade_transition.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/closing_time_container.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/location_container.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/starting_time_container.dart';
import 'package:vehicanich_shop/widgets/sign_in_widgets/all_texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appallcolor().appbackgroundcolor,
        body: BlocConsumer<LocationBLoc, LocationState>(
          listener: (context, state) {
            if (state is CurrentLocationFetched) {
              Navigator.of(context)
                  .push(FadeTransitionPageRoute(child: const MapScreen()));
            }
          },
          builder: (context, state) {
            if (state is LocationFetchingLoading) {
              return Center(
                child: loader,
              );
            }
            return SingleChildScrollView(
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
              const LocationTextContainer(),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Address', maxLines: 4),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Description', maxLines: 4),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const StartingTimeTextContainer(),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const ClosingTimeTextContainer(),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Smallheading(text: 'Proofs', width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Padding(
                  padding: EdgeInsets.only(left: 15, right: 13),
                  child: Row(
                      children: [MMImageContainer(), LicenceImagecontainer()])),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const Inputfield(hinttext: 'Upi id number'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.01, context)),
              const Smallheading(text: 'Photos', width: 0.3),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.01, context)),
              const HintText(size: 0.04, text: 'Banner photo'),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.01, context)),
              const BannerImagecontainer(),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              const HintText(size: 0.04, text: 'logo photo'),
              const LogoImagecontainer(),
              SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
              GestureDetector(
                onTap: () {
                  print('printed');
                  Navigator.of(context).push(
                      FadeTransitionPageRoute(child: DropdownWithTextField()));
                },
                child: BodyServiceContainer(
                  text: 'body maintaince and Repair',
                ),
              ),
            ]));
          },
        ));
  }
}
