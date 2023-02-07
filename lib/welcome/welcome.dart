import 'package:flutter/material.dart';
import 'package:sidra_wallet/components/auth/logo_image.dart';
import 'package:sidra_wallet/components/auth/login_signup_btn.dart';
import 'package:sidra_wallet/components/auth/background.dart';
import 'package:sidra_wallet/config/responsive.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: const DeskTopWelcomeScreen(),
            mobile: const MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class DeskTopWelcomeScreen extends StatelessWidget {
  const DeskTopWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: LogoScreenTopImage(),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 450,
                child: LoginAndSignupBtn(),
              ),
            ],
          ),
        ),
      ],
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
