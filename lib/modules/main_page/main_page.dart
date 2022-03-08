import 'package:desafio_layout/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/shared/themes/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Olá",
                          style: TextStyles.textsSimple,
                        ),
                        Text(
                          "Viktor!",
                          style: TextStyles.texts,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parabéns! Esse mês você fez",
                      style: TextStyles.textsSimple,
                    ),
                    IconButton(
                      icon: Icon(Icons.visibility),
                      iconSize: 35,
                      color: AppColors.options,
                      onPressed: () => {

                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}