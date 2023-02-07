import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidra_wallet/profile/mobile/mobile_card.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'mobile_budget.dart';
import 'mobile_transactions.dart';
import 'mobile_budget.dart';
class MobileDashboard extends StatefulWidget {
  @override
  _MobileDashboardState createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  var screens = [
    MobileCard(),
    MobileBudget(),
    MobileTransaction(),
  ]; //screens for each tab

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColors.primaryColor,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: AppColors.white,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: AppColors.secondaryText))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/nav/card.svg"),
                label:'',
            ),
            new BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/nav/budget.svg"),
                label: ''
            ),
            new BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/nav/person.svg"),
                label: ''
            ),
          ],
          onTap: (index){
            setState(() {
              selectedTab = index;
            });
          },
          showUnselectedLabels: true,
          iconSize: 30,
        ),
      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );
  }
}
