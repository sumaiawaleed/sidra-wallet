import 'package:flutter/cupertino.dart';
import 'package:sidra_wallet/style/colors.dart';
import 'package:sidra_wallet/config/size_config.dart';
import 'package:sidra_wallet/components/desktop/info_card.dart';

class IncomeTotal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
        SizedBox(
          width: SizeConfig.screenWidth,
          child: Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.spaceBetween,
            children: const [
              InfoCard(
                icon: 'assets/icons/income.svg',
                label: 'Income',
                amount: '+\$12,000',
                trace: "4.25%",
                  type: 'up',
              ),
              InfoCard(
                icon: 'assets/icons/spend.svg',
                label: 'Spending',
                amount: '-\$8000',
                trace: "4.25%",
                type: 'down',
              ),
              InfoCard(
                icon: 'assets/icons/transfer.svg',
                label: 'Transfer',
                amount: '',
              ),
              InfoCard(
                icon: 'assets/icons/puse.svg',
                label: 'Puse',
                amount: '',
              ),
            ],
          ),
        )
    );

  }

}