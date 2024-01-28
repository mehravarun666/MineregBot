import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChatbotPremiumCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.indigo,
        elevation: 8,
        child: Container(
          // Wrap with a container to specify height
          height: 210,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 7, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Chatbot Premium",style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("Get Premium to unlock all features and benefits",style: TextStyle(fontSize: 13,color: Colors.white),),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("Upgrade"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  child: Lottie.asset(
                    'assets/animation/hibot.json', // Replace with your Lottie animation path
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
