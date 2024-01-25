import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget {
  Widget Card1() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: Column(
          children: [
            Image.asset(
              "assets/images/messenger.png",
              height: 130,
              width: 120,
              scale: 6,
            ),
             Text(
                "Chat",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

          ],
        ),
      ),
    );
  }

  Widget Card2() {
    return Card(
      child: SizedBox(
        height: 200, // Set a fixed height for the Column
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
          child: Column(
            children: [
              Image.asset(
                "assets/images/serchfromimage.png",
                height: 130,
                width: 120,
                scale: 6,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Search From\nImage",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget Card3() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: Column(
          children: [
            Image.asset(
              "assets/images/audio-message.png",
              height: 130,
              width: 120,
              scale: 6,
            ),
            Text(
                "Voice\nSearch",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

  Widget Card4() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: Column(
          children: [
            Image.asset(
              "assets/images/language.png",
              height: 130,
              width: 120,
              scale: 6,
            ),
             Text(
                "Translator",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}