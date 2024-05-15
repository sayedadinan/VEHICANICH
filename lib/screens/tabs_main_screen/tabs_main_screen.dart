// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:vehicahich_admin/screens/accepted_screens/accepted_main_screen.dart';
import 'package:vehicahich_admin/screens/pending_screen/pending_request_sreen.dart';
import 'package:vehicahich_admin/screens/rejected_screens/rejected_main_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  int selectedindex = 3;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Myappallcolor().appbarbackgroundcolor,
          title: Text(
            'REQUESTS',     
            style: TextStyle(
              fontSize: Mymediaquery().mediaquerywidth(0.02, context),
              color: Myappallcolor().colorwhite,
              fontFamily: 'Jersey20',
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: Myappallcolor().colorwhite,
              child: const TabBar(
                tabs: [
                  Tab(text: 'Pendings'),
                  Tab(text: 'Accepted'),
                  Tab(text: 'Rejected'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  PendingRequestScreen(),
                  ApprovedRequestScreen(),
                  RejectedRequestScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
