import 'package:flutter/cupertino.dart';
import 'package:sidra_wallet/style/colors.dart';

class SidraCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Color(0x4B1A1F24),
              offset: Offset(0, 2),
            )
          ],
          gradient: LinearGradient(
            colors: [AppColors.KErrorRed, AppColors.Kbackground],
            stops: [0, 1],
            begin: AlignmentDirectional(0.94, -1),
            end: AlignmentDirectional(-0.94, 1),
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.KErrorRed,
            width: 1,
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/images/w_logo.png',
                  width: MediaQuery.of(context).size.width * 0.25,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "**** **** **** 5647",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                  fontWeight: AppColors.KfontBold,
                  ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.secondaryText,
                        fontWeight: AppColors.KfontBold,
                      ),
                    ),
                    Text(
                      "10,000",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kLightShadowColor,
                          fontWeight: AppColors.KfontBold,
                          ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "EXPIRES",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.secondaryText,
                          fontWeight: AppColors.KfontBold,
                          ),
                    ),
                    Text(
                      "8/22",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kLightShadowColor,
                          fontWeight: AppColors.KfontBold,
                          ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }

}