import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:desafio_layout/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class BtnNavigationBar extends StatefulWidget {
  final ThemeData? theme;
  int currentIndex;

  BtnNavigationBar({ Key? key, this.theme, required this.currentIndex }) : super(key: key);

  @override
  State<BtnNavigationBar> createState() => _BtnNavigationBarState();
}

class _BtnNavigationBarState extends State<BtnNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
        backgroundColor: widget.theme?.colorScheme.background,
        selectedIndex: widget.currentIndex,
        showElevation: false,
        itemCornerRadius: 15,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => widget.currentIndex = index),
        items: [
          BottomNavyBarItem(icon: 
            Icon(Icons.home, size: 30,color: widget.theme!.colorScheme.onSurface,), 
            title: Text("Home", style: widget.theme?.textTheme.titleMedium,), 
            activeColor: widget.theme!.colorScheme.primary, 
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(icon: Icon(Icons.shop_2, size: 30,color: widget.theme!.colorScheme.onSurface), 
            title: Text("Loja", style: widget.theme?.textTheme.titleMedium,), 
            activeColor: widget.theme!.colorScheme.primary, 
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(icon: Icon(Icons.people_alt, size: 30,color: widget.theme!.colorScheme.onSurface), 
            title: Text("Pessoas", style: widget.theme?.textTheme.titleMedium,), 
            activeColor: widget.theme!.colorScheme.primary, 
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(icon: Icon(Icons.show_chart, size: 30,color: widget.theme!.colorScheme.onSurface), 
            title: Text("Dados", style: widget.theme?.textTheme.titleMedium,), 
            activeColor: widget.theme!.colorScheme.primary, 
            textAlign: TextAlign.center,
          ),
        ],
      );
  }
}