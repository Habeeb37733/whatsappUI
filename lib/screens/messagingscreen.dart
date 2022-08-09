import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/components/chattiles.dart';
import 'package:whatsappui/components/messagebubble.dart';

import '../whatsappdata.dart';



class chatmsgscreen  extends StatefulWidget {
  final  data = Data();
  final String? nms;
  final String? img;
  chatmsgscreen({this.nms,this.img});

  @override
  State<StatefulWidget> createState() => chatmsgscreenstate();
}
 class chatmsgscreenstate extends State<chatmsgscreen> {
  TextEditingController textcontrol=TextEditingController();
   final  data = Data();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Colors.green,
         title: Row(
           children: [
         widget.img!=null? CircleAvatar(
           radius: 22,
           backgroundImage: AssetImage(widget.img!),
         ):Icon(Icons.preview_rounded),
             SizedBox(
               width: 8,
             ),
             Column(
               children: [
                 Title(color: Colors.white, child: Text(widget.nms!)),
                 Text("online",style: TextStyle(fontSize: 12,color: Colors.grey.shade50),),

               ],
             ),

               ],

         ),
           actions:[
           IconButton(onPressed: (){}, icon:Icon( Icons.videocam_rounded),iconSize: 25,),
            IconButton(onPressed: (){}, icon:Icon( Icons.phone),iconSize: 25,),
            IconButton(onPressed: (){}, icon:Icon( CupertinoIcons.ellipsis_vertical),iconSize: 25,),
],
       ),
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/bg.jpg"),
             fit: BoxFit.cover,
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Expanded(
               child: ListView.builder(
                   itemCount: data.chatmsg.length,
                   itemBuilder: (context, index) => messagebubble(
           msg: data.chatmsg.values.elementAt(index).elementAt(0),
                 ismsg:  data.chatmsg.values.elementAt(index).elementAt(1),
       ))),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   margin: EdgeInsets.only(
                     left: 8,
                      top: 8,
                     bottom: 8,
                     right: 6,
                    ),
                   width: MediaQuery.of(context).size.width*0.84,
                   height: MediaQuery.of(context).size.width*0.10,
                   padding: EdgeInsets.only(
                     right: 10,
                     left: 5,
                   ),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(20),)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Icon( Icons.emoji_emotions_outlined,
                      color: Colors.grey.shade500,
                      size: 30,),
                       Container(
                         margin: EdgeInsets.only(top: 3.0),
                         width: MediaQuery.of(context).size.width*0.55,
                         height: MediaQuery.of(context).size.width*0.1,
                         child: TextField(
                           controller: textcontrol,
                           cursorColor: Colors.teal,
                           style: TextStyle(
                             fontSize: 20,
                           ),
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: 'Type a message.....,',
                               hintStyle: TextStyle(
                                 color: Colors.grey.shade400,
                                 fontSize: 19,
                               )
                             ),

                         ),
                       ),
                       Icon(CupertinoIcons.paperclip,
                       color: Colors.grey.shade500,
                       size: 27,),
                       SizedBox(
                         width: 8,
                       ),
                       textcontrol.text.trim()==""||textcontrol.text==null?
                           Icon(Icons.camera_alt_rounded,
                           color: Colors.grey.shade600,
                             size: 27,
                           )
                           :
                           Container()

                     ],
                   ),

                 ),
                 CircleAvatar(
                     backgroundColor:Color(0xff00897b),
                 radius: 20,
                   child:  textcontrol.text.trim()==""||textcontrol.text==null?

                  Icon(Icons.mic,color: Colors.white,size: 27,) :
                   IconButton(
                   icon: Icon(Icons.send_rounded,color: Colors.white,),
                     onPressed: (){
                     data.chatmsg[data.chatmsg.length]=[textcontrol.text,true];
                     textcontrol.clear();
                     setState(() {});
                   },
                       ),
                 )
               ],
             ),



           ],
         ),
       ),

     );
   }
   @override
  void dispose() {
   textcontrol.dispose();
    super.dispose();
  }
 }





