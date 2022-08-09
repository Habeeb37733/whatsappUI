import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/screens/messagingscreen.dart';

class chattile extends StatelessWidget {

 final String? nms;
 final  String? img;
 final  String? disc;
 final  String? tme;
  chattile({
    this.nms,
    this.img,
    this.disc,
    this.tme
  } );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>chatmsgscreen(
        nms: nms,img: img),
      ),
      ),
      leading: img!=null?
          Padding(padding: EdgeInsets.only(
            right: 8.0,
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundImage:AssetImage(img!),
          ),)
          :Padding(padding: EdgeInsets.only(
        right: 8.0
      ),
      child: Icon(Icons.account_circle,
      size: 55,color: Colors.grey,),
      ),
      trailing: Padding(padding: EdgeInsets.all(8),

      child: Text(tme!,style: TextStyle(color: Colors.grey.shade500),),),
    title: Text(nms!,overflow:TextOverflow.ellipsis,
      style: TextStyle(fontSize: 19,),
    ),

      subtitle: Text(disc!,style: TextStyle(color: Colors.grey.shade500),),
    );
  }
}
