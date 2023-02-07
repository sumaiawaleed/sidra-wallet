import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sidra_wallet/components/card/sidra_card.dart';
import 'package:sidra_wallet/config/responsive.dart';
import 'package:sidra_wallet/config/size_config.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/style/style.dart';
import 'package:sidra_wallet/components/desktop/components.dart';
import 'package:sidra_wallet/components/card/incomes_total.dart';

class DeskTopDashboard extends StatelessWidget {
  const DeskTopDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: AppColors.black,
            )),
        actions: const [AppBarActionItem()],
      )
          : const PreferredSize(
        child: SizedBox(),
        preferredSize: Size.zero,
      ),
      body: SafeArea(
        child:
       Container(
         color: AppColors.primaryBg,
         child:  Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             if (Responsive.isDesktop(context))
               const Expanded(
                 flex: 1,
                 child: SideMenu(),
               ),
             Expanded(
               flex: 10,
               child: SizedBox(
                 height: SizeConfig.screenHeight,
                 child:
                 SingleChildScrollView(
                     padding:  EdgeInsets.all(Responsive.isDesktop(context) ?30 : 22),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const DashboardHeader(),
                         SizedBox(
                           height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 5 : SizeConfig.blockSizeVertical! * 3,
                         ),
                         IncomeTotal(),
                         SizedBox(
                           height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 4 : SizeConfig.blockSizeVertical! * 2,
                         ),
                         Row(
                           children: [
                             SidraCard(),
                           ],
                         ),
                         SizedBox(
                           height: SizeConfig.blockSizeVertical! * 3,
                         ),

                         SizedBox(
                           height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 5 : SizeConfig.blockSizeVertical! * 2,
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: const [
                             PrimaryText(
                               text: 'Budget',
                               size: 30.0,
                               fontWeight: FontWeight.w800,
                             ),
                             PrimaryText(
                               text: 'Transaction of past 6 months',
                               size: 16,
                               color: AppColors.secondaryColor,
                             ),
                           ],
                         ),
                         SizedBox(
                           height: SizeConfig.blockSizeVertical! * 5,
                         ),
                         const PaymentsDetailList()
                       ],
                     )
                 ),
               ),
             ),
             if (Responsive.isDesktop(context))
               Expanded(
                 flex: 4,
                 child: Container(
                   height: SizeConfig.screenHeight,
                   color: AppColors.secondaryBg,
                   child: SingleChildScrollView(
                     padding: const EdgeInsets.all(30),
                     child: Column(
                       children: const [
                         AppBarActionItem(),
                         PrimaryText(
                           text: 'Latest Transactions',
                           size: 30.0,
                           fontWeight: FontWeight.w800,
                         ),
                         PaymentsDetailList(),
                       ],
                     ),
                   ),
                 ),
               ),
           ],
         ),
       )
      ),
    );
  }
}
