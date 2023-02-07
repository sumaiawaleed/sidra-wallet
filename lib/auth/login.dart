import 'package:flutter/material.dart';

import 'package:sidra_wallet/config/responsive.dart';
import 'package:sidra_wallet/components/auth/background.dart';
import 'package:sidra_wallet/components/auth/logo_image.dart';
import 'package:sidra_wallet/components/auth/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileLoginScreen(),
          smallMobile: const MobileLoginScreen(),
          desktop: const DeskTopLoginScreen() ,
          tablet: const DeskTopLoginScreen() ,
        ),
      ),
    );
  }
}

class DeskTopLoginScreen extends StatelessWidget {
  const DeskTopLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
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
                  child: LoginForm(),
                ),
              ],
            ),
          ),
        ],
      );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
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
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
