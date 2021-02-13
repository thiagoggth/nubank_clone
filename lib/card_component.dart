import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final Widget child;

  const CardComponent({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
      ),
      child: this.child,
    );
  }
}
