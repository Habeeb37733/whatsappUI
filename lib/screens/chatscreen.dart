import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/components/chattiles.dart';

import 'package:whatsappui/screens/callscreen.dart';
import 'package:whatsappui/screens/statusscreen.dart';
import 'package:whatsappui/whatsappdata.dart';

import '../components/seprate.dart';

class chatscreen extends StatelessWidget {
  chatscreen({Key? key}) : super(key: key);

  final data = Data();
  static const String id = "chatscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text("Whatsapp", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
              Icon(Icons.search, size: 28,)),
          IconButton(
              onPressed: () {},
              icon:
              Icon(CupertinoIcons.ellipsis_vertical, size: 28,)),
        ],
        bottom: AppBar(
          backgroundColor: Color(0xff075e54),
          leading:Container(

            child: Icon(Icons.camera_alt_rounded, size: 25,),

          ),
          actions: [

            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.greenAccent,
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
                    onTap: (){},
                    child: Text("CHATS",
                      style: TextStyle(color:
                      Colors.greenAccent
                          , fontSize: 18),),
                  ),

                ],

              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
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
                    onTap: ()=>Navigator.pushNamed(context, statusscreen.id),
                    child: Text("STATUS",
                      style: TextStyle(color:
                      Colors.white
                          , fontSize: 18),),
                  ),

                ],

              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
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
                    onTap: ()=>Navigator.pushNamed(context,callscreen.id),
                    child: Text("CALLS",
                      style: TextStyle(color:
                      Colors.white
                          , fontSize: 18),),
                  ),

                ],

              ),
            ),

        ],

      ),
    ),
    floatingActionButton: Container(
    width: 70,
    height: 70,
    child: FittedBox(
    child: FloatingActionButton(onPressed: () { },
    child: Icon(Icons.message),
    backgroundColor: Colors.lightBlueAccent,
    ),
    ),
    ),
    body: ListView.separated(itemBuilder: (context,index)=>chattile(

    nms:data.chat.values.elementAt(index).elementAt(0),
    img:data.chat.values.elementAt(index).elementAt(1),
    disc:data.chat.values.elementAt(index).elementAt(2),
    tme:data.chat.values.elementAt(index).elementAt(3),
    ),

    itemCount:data.chat.length,
    separatorBuilder: (BuildContext context, int index) => seprate
    (
    )
    ,
    )
    ,


    );
  }
}
