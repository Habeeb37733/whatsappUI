import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/components/calldta.dart';
import 'package:whatsappui/components/seprate.dart';
import 'package:whatsappui/screens/chatscreen.dart';
import 'package:whatsappui/whatsappdata.dart';

class callscreen extends StatelessWidget {

  static const String id="callscreen";
  dynamic data=Data();
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
        bottom: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(Icons.camera_alt_rounded, size: 22,),
            color: Colors.white.withOpacity(.2),
          ),
          actions: [

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
                    onTap: ()=>Navigator.pushNamed(context, chatscreen.id),
                    child: Text("CHATS",
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
                    onTap: (){},
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
                    child: Text("CALLS",
                      style: TextStyle(color:
                      Colors.greenAccent
                          , fontSize: 18),),
                  ),

                ],

              ),
            ),

          ],

        ),
      ),
      floatingActionButton:
      Container(
        height: 70,
          width: 70,
        child: FloatingActionButton(onPressed: () {  },
          backgroundColor: Color(0xff25d366),
          child: Icon(Icons.add_call,size: 32,),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => calldata(
            name: data.calls.values.elementAt(index).elementAt(0),
            img:data.calls.values.elementAt(index).elementAt(1),
            calls:data.calls.values.elementAt(index).elementAt(2),
            desc: data.calls.values.elementAt(index).elementAt(5),
            ismised:data.calls.values.elementAt(index).elementAt(3),
            incoming: data.calls.values.elementAt(index).elementAt(4),


          ),
          separatorBuilder: (context, index)=>
              data.calls.values.elementAt(index).elementAt(6)?SizedBox(
                height: 10,
              ): seprate(),
          itemCount: data.calls.length),

    );
  }
}
