import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({ Key? key, required this.color, required this.icon, required this.onClick }) : super(key: key);
  final Icon icon;
  final Color color;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color,shape: BoxShape.circle),
      width: 50,
      height: 50,
      child: IconButton(icon: icon,enableFeedback: true, onPressed: onClick),
    );
  }
}