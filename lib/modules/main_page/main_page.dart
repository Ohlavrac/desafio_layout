import 'package:desafio_layout/change_theme.dart';
import 'package:desafio_layout/shared/components/btn_navigationbar.dart';
import 'package:desafio_layout/shared/components/data_card.dart';
import 'package:desafio_layout/shared/components/floatActionButtonAnim.dart';
import 'package:desafio_layout/shared/components/money_card.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/shared/themes/app_colors.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  Icon _myIcon = const Icon(Icons.visibility);
  Icon _themeModeIcon = const Icon(Icons.dark_mode);
  bool buttonClick = false;
  final int _currentIndex = 0;
  bool isDark = false;
  ChangeTheme myTheme = ChangeTheme();
  ThemeData? theme;

  late AnimationController animationController;
  late Animation degOneTranslationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: const Duration(microseconds: 250));
    degOneTranslationAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    theme = myTheme.currentTheme();
    animationController.addListener(() {
      setState(() {
        myTheme.currentTheme();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme?.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: _themeModeIcon,
            onPressed: () {
              setState(() => {
                if (isDark) {
                  _themeModeIcon = const Icon(Icons.dark_mode),
                  isDark = false
                } else {
                  _themeModeIcon = const Icon(Icons.light_mode),
                  isDark = true
                },
                myTheme.switchTheme(),
                theme = myTheme.currentTheme()
              });
            },
          )
        ],
      ),
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
                        const CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Olá",
                              style: theme?.textTheme.titleSmall,
                            ),
                            Text(
                              "Viktor!",
                              style: theme?.textTheme.titleLarge,
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
                        style: theme?.textTheme.labelMedium,
                      ),
                      IconButton(
                        icon: _myIcon,
                        iconSize: 35,
                        color: Theme.of(context).colorScheme.surface,
                        onPressed: () {
                          setState(() => {
                            if (!buttonClick) {
                              _myIcon = const Icon(Icons.visibility_off),
                              buttonClick = true
                            } else {
                              _myIcon = const Icon(Icons.visibility),
                              buttonClick = false
                            }
                          });
                        },
                      )
                    ],
                  ),
                  DataCard(visibility: buttonClick, theme: theme),
                  const SizedBox(height: 25,),
                  MoneyCard(visibility: buttonClick, theme: theme),
                  const SizedBox(height: 150,),
                ],
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 15,
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(270), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: AppColors.options,
                    icon: const Icon(
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
                    color: AppColors.options,
                    icon: const Icon(
                      Icons.person,
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
                    color: AppColors.options,
                    icon: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Pessoa")
                    },
                  ),
                ),
                CircularButton(
                  color: AppColors.primary,
                  icon: const Icon(
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
      bottomNavigationBar: BtnNavigationBar(currentIndex: _currentIndex, theme: theme,)
    );
  }
}