import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final bool visibility;
  final ThemeData? theme;

  const DataCard({ Key? key, required this.visibility, this.theme }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return Container(
      decoration: BoxDecoration(
        color: theme?.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: theme!.colorScheme.shadow,
          spreadRadius: 3,
          blurRadius: 6,
          offset: const Offset(4, 5),
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: theme?.textTheme.displaySmall,) : Text("$_requests", style: theme?.textTheme.displaySmall,),
                Icon(
                  Icons.shop_2,
                  size: 55,
                  color: theme?.colorScheme.primary,
                ),
                Column(
                  children: [
                    Text("Novos", style: theme?.textTheme.labelSmall),
                    Text("Pedidos", style: theme?.textTheme.labelSmall)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: theme?.textTheme.displaySmall,) : Text("$_clients", style: theme?.textTheme.displaySmall,),
                Icon(
                  Icons.people_alt,
                  size: 55,
                  color: theme?.colorScheme.primary,
                ),
                Column(
                  children: [
                    Text("Novos", style: theme?.textTheme.labelSmall),
                    Text("Clientes", style: theme?.textTheme.labelSmall)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: theme?.textTheme.displaySmall,) : Text("$_cities", style: theme?.textTheme.displaySmall,),
                Icon(
                  Icons.location_city,
                  size: 55,
                  color: theme?.colorScheme.primary,
                ),
                Column(
                  children: [
                    Text("Novas", style: theme?.textTheme.labelSmall),
                    Text("Cidades", style: theme?.textTheme.labelSmall)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}