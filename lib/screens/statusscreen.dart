import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/screens/callscreen.dart';
import 'package:whatsappui/screens/chatscreen.dart';

import '../components/statsustiles.dart';

class statusscreen extends StatelessWidget {
  const statusscreen({Key? key}) : super(key: key);
  static const String id = "statusscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 28,
              )),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              size: 22,
            ),
            color: Colors.white.withOpacity(.2),
          ),
          actions: [
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color : Colors.white,
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
                    onTap: () => Navigator.pushNamed(context, chatscreen.id),
                    child: Text(
                      "CHATS",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
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
                    onTap: () {},
                    child: Text(
                      "STATUS",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                    ),
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
                    onTap: () => Navigator.pushNamed(context, callscreen.id),
                    child: Text(
                      "CALLS",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/userhlp.png"),
                      ),
                      Positioned(
                          left: 30,
                          top: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.lightBlue,
                            radius: 10,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          )),
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  subtitle: Text(
                    "Tap to Add Status",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    "Recent Updates",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                sttustile(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 20,
                      bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(Icons.edit,size: 26,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 58,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff25d366),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(Icons.camera_alt_rounded,color: Colors.white,
                      size: 26,)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
