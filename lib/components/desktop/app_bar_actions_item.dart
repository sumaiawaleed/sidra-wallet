import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidra_wallet/style/colors.dart';

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/ring.svg',
            width: 20.0,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: const [
           SizedBox(
             width: 40,
             height: 40,
             child:  CircleAvatar(
               backgroundColor: AppColors.primaryColor,
               radius: 100,
               child: Text(
                 'A',
                 style: TextStyle(fontSize: 25, color: Colors.white),
               ),
             ),
           ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            )
          ],
        )
      ],
    );
  }
}
