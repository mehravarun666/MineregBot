import 'dart:html';

import 'package:flutter/material.dart';

class Constants{
  static Card1(){
    return Card(
      color: Colors.white,
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 120,
          height: 100,
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
            ],
          )
        ),
      ),
    );
  }
}