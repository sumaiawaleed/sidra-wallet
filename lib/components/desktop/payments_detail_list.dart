import 'package:flutter/material.dart';
import 'package:sidra_wallet/components/desktop/payment_list_title.dart';
import 'package:sidra_wallet/config/size_config.dart';
import 'package:sidra_wallet/data.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/style/style.dart';
import 'package:sidra_wallet/components/card/sidra_card.dart';

class PaymentsDetailList extends StatelessWidget {
  const PaymentsDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: List.generate(
            recentActivities.length,
                (index) =>  PaymentListTile(
              icon: recentActivities[index]["icon"],
              amount:recentActivities[index]["amount"],
              label: recentActivities[index]["label"],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),

      ],
    );
  }
}
