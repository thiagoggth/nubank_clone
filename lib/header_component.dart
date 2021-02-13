import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Olá Thiago ...',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Ink(
                  padding: EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.visibility,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              Ink(
                padding: EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.1),
                  shape: CircleBorder(),
                ),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
