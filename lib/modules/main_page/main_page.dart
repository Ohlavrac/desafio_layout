import 'package:desafio_layout/shared/components/data_card/data_card.dart';
import 'package:desafio_layout/shared/components/money_card/money_card.dart';
import 'package:desafio_layout/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/shared/themes/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Icon _myIcon = Icon(Icons.visibility);
  bool _buttonClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parabéns! Esse mês você fez",
                      style: TextStyles.textsSimple,
                    ),
                    IconButton(
                      icon: _myIcon,
                      iconSize: 35,
                      color: AppColors.options,
                      onPressed: () {
                        setState(() => {
                          if (!_buttonClick) {
                            _myIcon = Icon(Icons.visibility_off),
                            _buttonClick = true
                          } else {
                            _myIcon = Icon(Icons.visibility),
                            _buttonClick = false
                          }
                        });
                      },
                    )
                  ],
                ),
                DataCard(),
                SizedBox(height: 25,),
                MoneyCard(),
                SizedBox(height: 150,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}