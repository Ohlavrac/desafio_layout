import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class MoneyCard extends StatelessWidget {
  final bool visibility;

  const MoneyCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _money = 34000;

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
                visibility ? Text("R\$ _.__", style: TextStyles.price,) : Text("R\$ ${_money}0", style: TextStyles.price,),
                Text("em novos pedidos", style: TextStyles.moneyText)
              ],
            )
          ],
        ),
      ),
    );
  }
}