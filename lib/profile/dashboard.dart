import 'package:flutter/material.dart';
import 'package:sidra_wallet/components/auth/logo_image.dart';
import 'package:sidra_wallet/components/auth/login_signup_btn.dart';
import 'package:sidra_wallet/components/auth/background.dart';
import 'package:sidra_wallet/config/responsive.dart';
import 'package:sidra_wallet/profile/mobile/mobile_dashboard_screen.dart';
import 'desktop/desktop_dashboard_screen.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Responsive(
      desktop: DeskTopDashboard(),
      tablet: DeskTopDashboard(),
      mobile: MobileDashboard(),
      smallMobile: MobileDashboard(),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const LogoScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
