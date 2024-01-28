import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({super.key,required this.messages});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView.separated(keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,itemBuilder: (context,index){
        return widget.messages[index]['isUserMessage']?


        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(
              padding: EdgeInsets.symmetric(vertical: 14,horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(
                         0
                           ),
                    topLeft: Radius.circular(
                     20
                            ),
                  ),
                  color:  Colors.indigo.shade800
                      ),
              constraints: BoxConstraints(maxWidth: w*2/3),
              child: Text(widget.messages[index]['message'].text.text[0],style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 3,),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/varunimg.png',
                  fit: BoxFit.cover, // Use BoxFit.cover for a circular image
                ),
              ),
            )


          ],
        ):


        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
             Container(
               padding: EdgeInsets.all(1),
               width: 25,
               height: 25,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
               border: Border.all(color: Colors.black,width: 1)),
                child: Image.asset('assets/images/chatbot.png', scale: 18),
              ),
            SizedBox(width: 3,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(0),
                ),
                color: Colors.indigo.shade900.withOpacity(0.8),
              ),
              constraints: BoxConstraints(maxWidth: w * 2 / 3),
              child: Text(
                widget.messages[index]['message'].text.text[0],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );

      }, separatorBuilder: (_,i)=>Padding(padding: EdgeInsets.only(top: 10)), itemCount: widget.messages.length),
    );
  }
}
