import 'package:flutter/material.dart';

class CategoryAndMoreButton extends StatelessWidget {
  const CategoryAndMoreButton({
    Key key,
    @required this.sectionName,
  }) : super(key: key);

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        children: [
          Text(
            sectionName,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          Spacer(),
          FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Theme.of(context).primaryColor,
              child: Text(
                'More',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
