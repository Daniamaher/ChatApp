import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/models/message.dart';
import 'package:scholar_chat/widgets/chatbubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  
  final _controller=ScrollController();
  TextEditingController controller = TextEditingController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessageCollection);

  @override
  Widget build(BuildContext context) 
  {
    var email= ModalRoute.of(context)!.settings.arguments ;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt,descending:true ).snapshots(),
      builder: (context, snapshot) {
         
                   
        if(snapshot.hasData){
           List<Message>messagesList=[];
           /////////
             //final data = snapshot.data!;

            for (int i=0;i<snapshot.data!.docs.length;i++)
            {messagesList.add(Message.fromJson(snapshot.data!.docs[i]));

            }

           return Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  kLogo,
                  height: 50,
                ),
                Text('Scholar chat'),
              ],
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              Expanded(
                
                child: ListView.builder(


                  reverse: true,
                  controller: _controller,
                  itemCount: messagesList.length,
                  itemBuilder: (context, index) {
                    return  messagesList[index].id == email ? ChatBubble(message: messagesList[index]): ChatBubbleForFriend(message: messagesList[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: controller,
                  onSubmitted: (data) {
                    messages.add({
                     kMessage: data,
                     kCreatedAt:DateTime.now(),
                     'id':email

                    });
                    controller.clear();
                       _controller.animateTo(
                           0,
                    duration:Duration(seconds:1),
                    curve:Curves.fastOutSlowIn,);  


                                   },
                  decoration: InputDecoration(
                    hintText: 'Send Message ',
                    suffixIcon: Icon(
                      Icons.send,
                      color: kPrimaryColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
        }
        else {
          return Text('Loading..');
        }




        }
      
    );
  }
}



