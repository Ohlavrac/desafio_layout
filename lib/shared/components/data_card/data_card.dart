import 'package:desafio_layout/shared/themes/app_colors.dart';
import 'package:desafio_layout/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final bool visibility;

  const DataCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

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
                visibility ? Text("*", style: TextStyles.textsSimple,) : Text("${_requests}", style: TextStyles.textsSimple,),
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
                visibility ? Text("*", style: TextStyles.textsSimple,) : Text("${_clients}", style: TextStyles.textsSimple,),
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
                visibility ? Text("*", style: TextStyles.textsSimple,) : Text("${_cities}", style: TextStyles.textsSimple,),
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