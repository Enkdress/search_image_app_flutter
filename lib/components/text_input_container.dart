import 'package:flutter/material.dart';

class TextInputContainer extends StatelessWidget {
  final Widget child;

  const TextInputContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 40,
                color: Theme.of(context).primaryColor)
          ]),
      child: child,
    );
  }
}
