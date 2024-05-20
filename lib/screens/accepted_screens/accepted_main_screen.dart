import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/data_provider/shop_reference.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/widgets/accepted_widgets/accepted_grid.dart';
import 'package:vehicahich_admin/widgets/accepted_widgets/accepted_listview.dart';

class ApprovedRequestScreen extends StatelessWidget {
  const ApprovedRequestScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: ShopReference()
            .shopCollectionReference()
            .where(Shopkeys.isApproved, isEqualTo: true)
            .where(Shopkeys.isRejected, isEqualTo: false)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: h ${snapshot.error}'),
              );
            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text('No data available'),
              );
            } else {
              final shopdetails = snapshot.data!.docs;
              return SafeArea(child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return AcceptedPageGridview(
                      shopLists: shopdetails,
                    );
                  } else {
                    return AcceptedListView(
                      shopList: shopdetails,
                    );
                  }
                },
              ));
            }
          } else {
            return Center(
              child: Text(
                'Connection state: ${snapshot.connectionState}',
              ),
            );
          }
        },
      ),
    );
  }
}
