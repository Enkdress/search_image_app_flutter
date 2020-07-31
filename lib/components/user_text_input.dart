import 'package:flutter/material.dart';

class UserTextInput extends StatelessWidget {
  final String hinText;
  const UserTextInput({
    Key key,
    this.hinText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinText,
        border: InputBorder.none,
      ),
    );
  }
}
