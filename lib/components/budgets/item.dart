import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/style/style.dart';

class BudgetItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Card(
      margin: EdgeInsets.all(10),
      color: AppColors.primaryBg,
      shadowColor: AppColors.kShadowColor,
      elevation: 10,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Test \$1000",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text('2023-1-1'),
                    ),
                  ],
                ),
              ],
            ),
            PrimaryText(
              text: 'total spent:\$100',
              size: 12,
              color: AppColors.secondaryText,
            ),
          ]),
    );
  }
}
