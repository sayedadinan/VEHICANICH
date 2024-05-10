import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/data_provider/shop_reference.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/widgets/pending_widgets/pending_grid.dart';
import 'package:vehicahich_admin/widgets/pending_widgets/pending_listview.dart';

class PendingRequestScreen extends StatelessWidget {
  const PendingRequestScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: ShopReference()
            .shopCollectionReference()
            .where(Shopkeys.isApproved, isEqualTo: false)
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
                child: Text('Error: ${snapshot.error}'),
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
                    return PendingPageGridview(
                      shopList: shopdetails,
                    );
                  } else {
                    return PendingListView(
                      shopList: shopdetails,
                    );
                  }
                },
              ));
            }
          } else {
            return Center(
              child: Text('Connection state: ${snapshot.connectionState}'),
            );
          }
        },
      ),
    );
  }
}
