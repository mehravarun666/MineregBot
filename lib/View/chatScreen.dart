import 'package:chitchat/Controller/MessagesScreen.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  late DialogFlowtter dialogflowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String,dynamic>> messages =[];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogflowtter = instance);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatBot"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: messages.isEmpty
                ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    child: Lottie.asset(
                      'assets/animation/howcanihelp.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Ask Anything From Your Chatbot",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
                : MessagesScreen(messages: messages),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            color: Colors.indigo,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 8, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: "Type a message...",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    sendMessage(_controller.text);
                    _controller.clear();
                  },
                  icon: Icon(Icons.send_rounded, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }

  sendMessage(String text)async{
    if(text.isEmpty){
      print("Text is empty");
    }
    else{
      setState(() {
        addMessage(Message(text: DialogText(text: [text])),true);
      });
      
      DetectIntentResponse response = await dialogflowtter.detectIntent(queryInput: QueryInput(text: TextInput(text: text)));
      if(response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message,[bool isUserMessage = false]){
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }
}
