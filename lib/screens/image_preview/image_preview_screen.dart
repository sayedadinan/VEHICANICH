import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';

class ImagePreviewScreen extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> shopList;
  const ImagePreviewScreen({super.key, required this.shopList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              width: Mymediaquery().mediaquerywidth(0.5, context),
              height: Mymediaquery().mediaqueryheight(0.5, context),
              child: Image.network(shopList[Shopkeys.licenceimagepath],
                  fit: BoxFit.cover)),
        ],
      ),
    );
  }
}
