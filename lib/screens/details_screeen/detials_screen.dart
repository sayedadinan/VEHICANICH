import 'package:flutter/material.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/constant_variables/status_enum.dart';
import 'package:vehicahich_admin/widgets/details_screen_widgets/details_containers.dart';
import 'package:vehicahich_admin/widgets/details_screen_widgets/details_page_buttons.dart';

class DetailsScreen extends StatelessWidget {
  final shopList;
  final CurrentStatus currentStatus;
  const DetailsScreen(
      {super.key, required this.shopList, required this.currentStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Myappallcolor().appbarbackgroundcolor,
        title: Text(
          'DETAILS',
          style: TextStyle(
            fontSize: Mymediaquery().mediaquerywidth(0.02, context),
            color: Myappallcolor().colorwhite,
            fontFamily: 'Jersey20',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.04, context)),
                Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Myappallcolor().gridviewcardcolor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: Mymediaquery().mediaquerywidth(0.8, context),
                    height: Mymediaquery().mediaqueryheight(2, context),
                    child: Column(
                      children: [
                        DetailsFields(shopList: shopList),
                        switch (currentStatus) {
                          CurrentStatus.accepted =>
                            RejectedBUtton(shop: shopList),
                          CurrentStatus.pending =>
                            RejectedandAcceptButton(shop: shopList),
                          CurrentStatus.rejected =>
                            ApproveButton(shop: shopList),
                        }
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
