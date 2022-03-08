import 'package:desafio_layout/shared/themes/app_colors.dart';
import 'package:desafio_layout/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class DataCard extends StatefulWidget {
  const DataCard({ Key? key }) : super(key: key);

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
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
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "12",
                  style: TextStyles.textsSimple,
                ),
                Icon(
                  Icons.shop_2,
                  size: 55,
                  color: AppColors.primary,
                ),
                Column(
                  children: [
                    Text("Novos", style: TextStyles.textsSimple),
                    Text("Pedidos", style: TextStyles.textsSimple)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "20",
                  style: TextStyles.textsSimple,
                ),
                Icon(
                  Icons.people_alt,
                  size: 55,
                  color: AppColors.primary,
                ),
                Column(
                  children: [
                    Text("Novos", style: TextStyles.textsSimple),
                    Text("Clientes", style: TextStyles.textsSimple)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "20",
                  style: TextStyles.textsSimple,
                ),
                Icon(
                  Icons.location_city,
                  size: 55,
                  color: AppColors.primary,
                ),
                Column(
                  children: [
                    Text("Novas", style: TextStyles.textsSimple),
                    Text("Cidades", style: TextStyles.textsSimple)
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