import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/screens/details_screeen/detials_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/constant_variables/status_enum.dart';

class AcceptedPageGridview extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> shopLists;
  const AcceptedPageGridview({super.key, required this.shopLists});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: Mymediaquery().mediaquerywidth(0.05, context),
          left: Mymediaquery().mediaquerywidth(0.05, context)),
      child: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.83,
            crossAxisCount: 4, // Number of columns in the grid
            crossAxisSpacing: 18.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
          ),
          itemCount: shopLists.length,
          itemBuilder: (BuildContext context, int index) {
            final shop = shopLists[index];
            return ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 100),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              currentStatus: CurrentStatus.accepted,
                              shopList: shop,
                            )));
                  },
                  child: Card(
                    elevation: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Myappallcolor().gridviewcardcolor,
                      ),
                      width: double.infinity,
                      height: Mymediaquery().mediaqueryheight(0.12, context),
                      child: Column(
                        children: [
                          SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.02, context)),
                          Padding(
                              padding: EdgeInsets.only(
                                  right: Mymediaquery()
                                      .mediaquerywidth(0.04, context),
                                  left: Mymediaquery()
                                      .mediaquerywidth(0.04, context)),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11)),
                                  height: Mymediaquery()
                                      .mediaquerywidth(0.10, context),
                                  width: double.infinity,
                                  child: Image.network(
                                      shop[Shopkeys.bannerimagepath]))),
                          SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.02, context)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(shop[Shopkeys.shopname],
                                    style: TextStyle(
                                        fontFamily: 'Jersey20',
                                        fontWeight: FontWeight.w500,
                                        fontSize: Mymediaquery()
                                            .mediaquerywidth(0.02, context)))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(shop[Shopkeys.name],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Mymediaquery()
                                            .mediaquerywidth(0.01, context)))
                              ]),
                          SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.01, context)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                shop[Shopkeys.startingtime],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.01, context)),
                              ),
                              Text(
                                'to',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.01, context)),
                              ),
                              Text(
                                shop[Shopkeys.closingtime],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.01, context)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
