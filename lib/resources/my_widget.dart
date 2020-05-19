import 'package:flutter/material.dart';

class MyWidget {
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
}
