import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;
  final labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: labelTextStyle)
      ],
    );
  }
}
