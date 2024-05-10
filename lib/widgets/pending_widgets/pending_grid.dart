import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/screens/details_screeen/detials_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/constant_variables/status_enum.dart';

class PendingPageGridview extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> shopList;
  const PendingPageGridview({super.key, required this.shopList});

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
            crossAxisCount: 4,
            crossAxisSpacing: 18.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: shopList.length,
          itemBuilder: (BuildContext context, int index) {
            final shop = shopList[index];
            return ConstrainedBox(
              constraints: BoxConstraints(minWidth: 100),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              currentStatus: CurrentStatus.pending,
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
                            height:
                                Mymediaquery().mediaqueryheight(0.02, context),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: Mymediaquery()
                                    .mediaquerywidth(0.04, context),
                                left: Mymediaquery()
                                    .mediaquerywidth(0.04, context)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11)),
                              height:
                                  Mymediaquery().mediaquerywidth(0.10, context),
                              width: double.infinity,
                              child:
                                  Image.network(shop[Shopkeys.bannerimagepath]),
                            ),
                          ),
                          SizedBox(
                            height:
                                Mymediaquery().mediaqueryheight(0.02, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                shop[Shopkeys.shopname],
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: 'Jersey20',
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.0, context)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                shop[Shopkeys.name],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Mymediaquery()
                                        .mediaquerywidth(0.01, context)),
                              )
                            ],
                          ),
                          SizedBox(
                            height:
                                Mymediaquery().mediaqueryheight(0.01, context),
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
