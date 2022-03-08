import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class MoneyCard extends StatefulWidget {
  const MoneyCard({ Key? key }) : super(key: key);

  @override
  State<MoneyCard> createState() => _MoneyCardState();
}

class _MoneyCardState extends State<MoneyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(2, 3),
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shop_2,
              size: 65,
              color: AppColors.primary,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("R\$ 34.000,00", style: TextStyles.price),
                Text("em novos pedidos", style: TextStyles.moneyText)
              ],
            )
          ],
        ),
      ),
    );
  }
}