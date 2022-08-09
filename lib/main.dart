
import 'package:flutter/material.dart';
import 'package:whatsappui/screens/callscreen.dart';
import 'package:whatsappui/screens/chatscreen.dart';
import 'package:whatsappui/screens/statusscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: chatscreen.id,
      routes: {
        chatscreen.id : (context)=>chatscreen(),
        statusscreen.id : (context)=>statusscreen(),
        callscreen.id : (context)=>callscreen(),
      },
      debugShowCheckedModeBanner: false,
    ),

  );
}
