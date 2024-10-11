import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/models/message.dart';


class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,required this.message,}) : super(key: key);
   final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
       //alignment: Alignment.centerLeft,
       
       padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
       margin:EdgeInsets.symmetric(horizontal: 16,vertical: 8) ,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(32),
         topRight: Radius.circular(32),
         bottomRight: Radius.circular(32)),
         color: kPrimaryColor,
       ),
       child:Text(message.message,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}














class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend ({
    Key? key,required this.message,}) : super(key: key);
   final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
       //alignment: Alignment.centerLeft,
       
       padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
       margin:EdgeInsets.symmetric(horizontal: 16,vertical: 8) ,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(32),
         topRight: Radius.circular(32),
         bottomLeft: Radius.circular(32)),
         color:Colors.blue,
       ),
       child:Text(message.message,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}


