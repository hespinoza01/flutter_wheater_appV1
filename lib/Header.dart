import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BackWheater.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    final button = new InkWell(
      child: new Container(
        width: 180.0,
        height: 50.0,
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),

        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Color(0xFFf38b02),
              offset: new Offset(10.0, 10.0),
              blurRadius: 30.0
            )
          ],

          borderRadius: new BorderRadius.circular(30.0),
          color: Color(0xFFfeb800)
        ),

        child: new Center(
          child: new Text(
            "GO TO CALENDAR",
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.w900
            )
          ),
        ),
      )
    );

    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new BackWheater(),
          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 50.0
            ),

            child: new Column(
              children: <Widget>[
                Text(
                  "TUESDAY",
                  style: const TextStyle(
                    color: Color(0xFFeba800),
                    fontSize: 55.0,
                    fontWeight: FontWeight.w600
                  ),
                ),

                new Icon(
                  Icons.notifications,
                  color: Color(0xFFeba800),
                  size: 28.0,
                ),

                button
              ],
            ),
          )
        ],
      ),
    );
  }
}