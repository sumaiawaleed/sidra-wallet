import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidra_wallet/config/responsive.dart';
import 'package:sidra_wallet/config/size_config.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/style/style.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  final String? trace;
  final String? type;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
    this.trace,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context) ? 200.0 : 140),
      padding: EdgeInsets.fromLTRB(
          20.0, 20.0, Responsive.isDesktop(context) ? 40 : 10, 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon!,
            width: Responsive.isDesktop(context) ? 35 : 28,
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 2,
          ),
          PrimaryText(
            text: label!,
            size: Responsive.isDesktop(context) ? 16 : 14,
            color: AppColors.secondaryText,
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 1,
          ),
          PrimaryText(
            text: amount!,
            size: Responsive.isDesktop(context) ? 18 : 16,
            fontWeight: FontWeight.w800,
            color: AppColors.primaryText,

          ),

        ],
      ),
    );
  }
}


class TraceLable extends StatelessWidget {
  final String? trace;
  final String? type;

  const TraceLable({
    Key? key,
    this.trace,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == 'up') {
      return (
          Container(
            width: 80,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0x4D39D2C0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${trace} ',
                  textAlign: TextAlign.start,
                ),
                Icon(
                  Icons.trending_up_rounded,
                  color:AppColors.tertiaryColor,
                  size: 24,
                ),
              ],
            ),
          )
      );
    } else if(type == 'down') {
      return (
          Container(
            width: 80,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0x9AF06A6A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${trace} ',
                  textAlign: TextAlign.start,
                ),
                Icon(
                  Icons.trending_down,
                  color: AppColors.errorRed,
                  size: 24,
                ),
              ],
            ),
          )
      );
    }else{
      return Container(
        child: SizedBox(),
      );
    }
  }
}