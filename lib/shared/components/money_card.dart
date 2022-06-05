import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final bool visibility;
  final ThemeData? theme;

  const MoneyCard({ Key? key, required this.visibility, this.theme }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _money = 34000;

    return Container(
      decoration: BoxDecoration(
        color: theme?.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: theme!.colorScheme.shadow,
          spreadRadius: 3,
          blurRadius: 6,
          offset: Offset(4, 5),
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 35, bottom: 35, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shop_2,
              size: 65,
              color: theme?.colorScheme.primary,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("R\$ _.__            ", style: theme?.textTheme.labelLarge,) : Text("R\$ ${_money}0", style: theme?.textTheme.labelLarge,),
                Text("em novos pedidos", style: theme?.textTheme.labelSmall)
              ],
            )
          ],
        ),
      ),
    );
  }
}