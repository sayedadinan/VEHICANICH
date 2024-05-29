import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/screens/image_preview/image_preview_screen.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/widgets/pending_widgets/pending_details_text.dart';

class DetailsFields extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shopList;
  const DetailsFields({super.key, required this.shopList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Mymediaquery().mediaqueryheight(0.1, context),
        ),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            width: Mymediaquery().mediaquerywidth(0.23, context),
            height: Mymediaquery().mediaqueryheight(0.23, context),
            child: Image.network(shopList[Shopkeys.bannerimagepath],
                fit: BoxFit.cover)),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        PendingContainerwithText(text: shopList[Shopkeys.shopname]),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        const PendingContainerwithText(text: 'locations'),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        PendingContainerwithText(text: shopList[Shopkeys.phone]),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        PendingContainerwithText(text: shopList[Shopkeys.whatsapp]),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        PendingContainerwithText(text: shopList[Shopkeys.startingtime]),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        PendingContainerwithText(text: shopList[Shopkeys.closingtime]),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ImagePreviewScreen(
                      shopList: shopList,
                    )));
          },
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              width: Mymediaquery().mediaquerywidth(0.23, context),
              height: Mymediaquery().mediaqueryheight(0.23, context),
              child: Image.network(shopList[Shopkeys.licenceimagepath],
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: Mymediaquery().mediaqueryheight(0.05, context))
      ],
    );
  }
}
