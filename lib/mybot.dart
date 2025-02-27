import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class chatbot extends StatefulWidget {
  const chatbot({super.key});

  @override
  State<chatbot> createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {

  final our_url='https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=AIzaSyBl3FhLrenQedjvyD1U1NuB5BE18sGMLIU';

  ChatUser myself =ChatUser(id: '1',firstName: "Aayush");
  ChatUser bot =ChatUser(id: '2',firstName: "Tera bhai");

  List<ChatMessage> allmessage =[];
  List<ChatUser> _typing=[];

  final header={
    'Content-Type': 'application/json'
  };


  getdata(ChatMessage m) async{
    _typing.add(bot);
    allmessage.insert(0, m);
    setState(() {

    });
    var data= {"contents": [{
      "parts":[{"text": m.text}]
    }]
    };

    await http.post(Uri.parse(our_url),headers:header,body: jsonEncode(data))
        .then((value){
          if(value.statusCode==200){
            var result=jsonDecode(value.body);
            print(result["candidates"][0]["content"]["parts"][0]["text"]);

            ChatMessage m1=ChatMessage(user: bot, createdAt: DateTime.now(),text:result["candidates"][0]["content"]["parts"][0]["text"] );
            allmessage.insert(0,m1);

          }
          else{
            print("error occured");
          }
    }).catchError((e){});
    _typing.remove(bot);
    setState(() {

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome Back Ayush ",style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor:Colors.black,),
      body: DashChat(
        typingUsers: _typing,
          currentUser: myself,
          onSend: (ChatMessage m){
            getdata(m);

          },
          messages: allmessage),
    );
  }
}