import 'package:desafio_layout/shared/components/data_card/data_card.dart';
import 'package:desafio_layout/shared/components/floatActionButtonAnim/floatActionButtonAnim.dart';
import 'package:desafio_layout/shared/components/money_card/money_card.dart';
import 'package:desafio_layout/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/shared/themes/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  Icon _myIcon = Icon(Icons.visibility);
  bool buttonClick = false;

  late AnimationController animationController;
  late Animation degOneTranslationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(microseconds: 250));
    degOneTranslationAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    animationController.addListener(() {
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          SingleChildScrollView(
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
                            if (!buttonClick) {
                              _myIcon = Icon(Icons.visibility_off),
                              buttonClick = true
                            } else {
                              _myIcon = Icon(Icons.visibility),
                              buttonClick = false
                            }
                          });
                        },
                      )
                    ],
                  ),
                  DataCard(visibility: buttonClick,),
                  SizedBox(height: 25,),
                  MoneyCard(visibility: buttonClick,),
                  SizedBox(height: 150,),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(270), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: AppColors.primary,
                    width: 55,
                    height: 55,
                    icon: Icon(
                      Icons.shop,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Shop")
                    },
                  ),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(225), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: AppColors.primary,
                    width: 55,
                    height: 55,
                    icon: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Pessoa 2")
                    },
                  ),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(180), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: AppColors.primary,
                    width: 55,
                    height: 55,
                    icon: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Pessoa")
                    },
                  ),
                ),
                CircularButton(
                  color: AppColors.primary,
                  width: 60,
                  height: 60,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onClick: () => {
                    if (animationController.isCompleted) {
                      animationController.reverse()
                    } else {
                      animationController.forward()
                    }
                  },
                ),
              ],
          ))
        ],
      ),
    );
  }
}