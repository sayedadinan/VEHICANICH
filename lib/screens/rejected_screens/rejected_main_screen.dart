import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicahich_admin/repositery/shop_reference.dart';
import 'package:vehicahich_admin/repositery/shopdetails_key.dart';
import 'package:vehicahich_admin/widgets/rejected_widgets/rejected_grid.dart';
import 'package:vehicahich_admin/widgets/rejected_widgets/rejected_listview.dart';

class RejectedRequestScreen extends StatelessWidget {
  const RejectedRequestScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: ShopReference()
            .shopCollectionReference()
            .where(Shopkeys().isApproved, isEqualTo: false)
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
                    return RejectedPageGridview(
                      shopList: shopdetails,
                    );
                  } else {
                    return RejectedListView(
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
