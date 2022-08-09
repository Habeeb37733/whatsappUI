import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wtsaptab extends StatelessWidget {

  final String? label;
 late final Function()? fn;
  wtsaptab({this.fn,this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: label=='CHATS'? Colors.white : Colors.transparent,
            width: 5,
          ),
        ),
      ),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(padding: EdgeInsets.all(8)),
    GestureDetector(
      onTap: fn,
      child: Text(label!,
        style: TextStyle(color: label=='CHATS'? Colors.white : Colors.white,fontSize: 18),),
    ),

    ],

  ),
      );
  }
}
