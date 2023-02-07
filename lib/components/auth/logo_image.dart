import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidra_wallet/style/constants.dart';

class LogoScreenTopImage extends StatelessWidget {
  const LogoScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   "LOGIN",
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        SizedBox(height: AppConstant.defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("assets/images/logo.png"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height:  AppConstant.defaultPadding * 2),
      ],
    );
  }
}