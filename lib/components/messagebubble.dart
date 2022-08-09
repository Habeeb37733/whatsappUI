import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messagebubble extends StatelessWidget {
  final dynamic msg;
 final dynamic ismsg;
messagebubble({
  this.msg,
  this.ismsg});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: ismsg?MainAxisAlignment.end:MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              constraints: BoxConstraints(
                minWidth: 0,
                maxWidth: MediaQuery.of(context).size.width*0.7,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: ismsg?Color(0xffccfbc6): Color(0xffDFE7DDFF),


              ),
              child: Text(msg,
                softWrap: true,
                style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),)
            ),

          ],
        ),
        SizedBox(height: 8,),
      ],
    );
  }
}
