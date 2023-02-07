import 'package:flutter/material.dart';
import 'package:sidra_wallet/components/card/sidra_card.dart';
import 'package:sidra_wallet/style/colors.dart';
class MobileCard extends StatefulWidget {
  @override
  _MobileCardState createState() => _MobileCardState();
}

class _MobileCardState extends State<MobileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Your Cards",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: AppColors.primaryColor,
                            size: 30,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  //Container for card
                  SizedBox(
                    height: 16,
                  ),

                  SidraCard(),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    child: Text(
                      "Card Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
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
                                  color: Colors.grey[700]),
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
                                  color: Colors.grey[700]),
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
                                  color: Colors.grey[700]),
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
            decoration: BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
          );
        },
        initialChildSize: 0.95,
        maxChildSize: 0.95,
      ),
    );
  }
}
