import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calldata extends StatelessWidget {
  late String? name;
  late String? img;
  late String? desc;
  late  dynamic calls;
  late bool incoming;
  late bool ismised;

  calldata({
    this.name, this.img, this.desc, this.calls, required this.incoming, required this.ismised
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img!),
      ),
      title: Text(name!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(ismised?CupertinoIcons.arrow_down_left:CupertinoIcons.arrow_up_right,
          color: incoming?Colors.red:Colors.greenAccent,
            size: 15,
          ),

          Text(desc!),

        ],
      ),

    );
  }
}
