import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/image_blocs/image_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';

class LogoImagecontainer extends StatelessWidget {
  const LogoImagecontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        if (state is ImageInitial && state.logoimagepath.isNotEmpty)
          GestureDetector(
            onTap: () {
              context.read<ImageBloc>().add(LogoImagePicker());
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Appallcolor().textcolor,
                  width: 5,
                ),
              ),
              width: Mymediaquery().mediaquerywidth(0.40, context),
              height: Mymediaquery().mediaqueryheight(0.12, context),
              child: Image.file(
                File(state.logoimagepath),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
          GestureDetector(
            onTap: () {
              context.read<ImageBloc>().add(LogoImagePicker());
              print('started banner');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Appallcolor().textcolor,
                    width: 5,
                  ),
                ),
                width: Mymediaquery().mediaquerywidth(0.40, context),
                // width: double.infinity,
                height: Mymediaquery().mediaqueryheight(0.12, context),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    CustomText(
                      fontSize: 14,
                      text:
                          'Please upload your shop photo here for showing to customer',
                    ),
                    CustomText(
                      fontSize: 14,
                      text: '(tap here)',
                    ),
                  ],
                ),
              ),
            ),
          ),
        const SizedBox(width: 10),
      ]);
    });
  }
}
