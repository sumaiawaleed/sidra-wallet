import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const PaymentListTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon!,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: label!,
        size: 14.0,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryText,
      ),
      subtitle: const PrimaryText(
        text: 'income',
        size: 12,
        color: AppColors.secondaryText,
      ),
      trailing: PrimaryText(
        text: amount!,
        size: 16,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
