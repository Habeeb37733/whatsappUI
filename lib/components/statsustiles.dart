import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/components/seprate.dart';
import 'package:whatsappui/whatsappdata.dart';

class sttustile extends StatelessWidget {

 dynamic  data1=Data();
  @override
  Widget  build(BuildContext context) {
    return Expanded(
      child: ListView.separated(

          itemBuilder: (context, index) {
           return ListTile(
             leading: DottedBorder(
               color: Colors.teal.shade300,
               borderType: BorderType.Circle,
               radius: Radius.circular(27),
               dashPattern: [
                 (2*pi*27)/data1.status.values.elementAt(index).elementAt(2),
                 data1.status.values.elementAt(index).elementAt(3),
               ],
               strokeWidth: 3,
               child:CircleAvatar(
                 radius: 27,
                 backgroundColor: Colors.transparent,
                 child: CircleAvatar(
                   radius: 25,
                   backgroundImage: AssetImage
                     (data1.status.values.elementAt(index).elementAt(1),),
                 ),
               ) ,),
             title: Text(data1.status.values.elementAt(index).elementAt(0),
             style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),
             ),
             subtitle: Text(data1.status.values.elementAt(index).elementAt(4),),
           );
          },

          separatorBuilder: (context, index) {
          return  data1.status.values.elementAt(index).elementAt(5)?seprate():seprate();
          },

          itemCount: data1.status.length,),
    );
  }
}
