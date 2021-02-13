import 'package:flutter/material.dart';

class CardOptionComponent extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardOptionComponent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(120, 70, 200, 0.4),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            this.icon,
            color: Colors.white,
            size: 25,
          ),
          Text(
            this.label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
