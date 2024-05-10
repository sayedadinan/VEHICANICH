import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/screens/details_screeen/detials_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/constant_variables/status_enum.dart';

class AcceptedListView extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> shopList;
  const AcceptedListView({super.key, required this.shopList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: shopList.length,
          itemBuilder: (context, index) {
            final shop = shopList[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                          currentStatus: CurrentStatus.accepted,
                          shopList: shop,
                        )));
              },
              child: Card(
                elevation: 10,
                color: Myappallcolor().textcolor,
                child: Container(
                  color: Myappallcolor().gridviewcardcolor,
                  width: Mymediaquery().mediaquerywidth(0.33, context),
                  height: Mymediaquery().mediaqueryheight(0.29, context),
                  child: Row(
                    children: [
                      SizedBox(
                        width: Mymediaquery().mediaquerywidth(0.03, context),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        width: Mymediaquery().mediaquerywidth(0.23, context),
                        height: Mymediaquery().mediaqueryheight(0.22, context),
                        child: Image.network(shop[Shopkeys.bannerimagepath]),
                      ),
                      SizedBox(
                        width: Mymediaquery().mediaquerywidth(0.13, context),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height:
                                Mymediaquery().mediaqueryheight(0.05, context),
                          ),
                          Row(
                            children: [
                              Text(
                                shop[Shopkeys.shopname],
                                style: TextStyle(
                                    fontFamily: 'Jersey20',
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.06, context)),
                              )
                            ],
                          ),
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
                      )
                    ],
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
