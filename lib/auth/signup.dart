import 'package:flutter/material.dart';
import 'package:sidra_wallet/components/auth/background.dart';
import 'package:sidra_wallet/config/responsive.dart';
import 'package:sidra_wallet/components/auth/logo_image.dart';
import 'package:sidra_wallet/components/auth/signup_form.dart';
import 'package:sidra_wallet/style/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileSignupScreen(),
          smallMobile: const MobileSignupScreen(),
          desktop: const DesktopSignupScreen(),
          tablet: const DesktopSignupScreen(),
        ),
      ),
    );
  }
}

class DesktopSignupScreen extends StatelessWidget {
  const DesktopSignupScreen({
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 450,
                  child: SignUpForm(),
                ),
                SizedBox(height: 16.0 / 2),
                // SocalSignUp()
              ],
            ),
          )
        ],
      );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
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
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
        // const SocalSignUp()
      ],
    );
  }
}
