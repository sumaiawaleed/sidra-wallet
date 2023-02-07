import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sidra_wallet/style/colors.dart';

class CardSettings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Row(children: [
        Container(
          child: Text(
            "Card Settings",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.black),
          ),
          padding: EdgeInsets.symmetric(horizontal: 32),
        ),

        SizedBox(
          height: 16,
        ),

        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: AppColors.kLightShadowColor,
                    spreadRadius: 10.0,
                    blurRadius: 4.5)
              ]),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          margin: EdgeInsets.symmetric(horizontal: 32),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.wifi_tethering,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Card Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColors.secondaryText),
                  )
                ],
              ),
              Switch(
                value: true,
                activeColor: Color.fromRGBO(50, 172, 121, 1),
                onChanged: (_) {},
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.kLightShadowColor,
                          spreadRadius: 10.0,
                          blurRadius: 4.5)
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Online Payment",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.secondaryText),
                        )
                      ],
                    ),
                    Switch(
                      value: true,
                      activeColor: Color.fromRGBO(50, 172, 121, 1),
                      onChanged: (_) {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.kLightShadowColor,
                          spreadRadius: 10.0,
                          blurRadius: 4.5)
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.mobile_screen_share,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "ATM Withdraws",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.secondaryText),
                        )
                      ],
                    ),
                    Switch(
                      value: true,
                      activeColor: Color.fromRGBO(50, 172, 121, 1),
                      onChanged: (_) {},
                    )
                  ],
                ),
              )

            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ]);
  }

}