import 'package:flutter/material.dart';

class MyWidget {
  static textCategory(title) => Padding(
    padding: EdgeInsets.only(top: 32),
    child: Text(
      title,
      style: TextStyle(fontSize: 20),
    ),
  );
  static createResumeTitle(title) => Padding(
    padding: EdgeInsets.only(top: 16),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  static textField(label, hint, Widget icon, int maxLines) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: icon),
        ),
      );

  static prevNextButton(prev, next) => Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        OutlineButton.icon(onPressed: prev, icon: Icon(Icons.keyboard_arrow_left), label: Text("PREV")),
        OutlineButton.icon(onPressed: next, icon: Icon(Icons.keyboard_arrow_right), label: Text("NEXT")),
      ],
    ),
  );
}
