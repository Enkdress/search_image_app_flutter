import 'package:flutter/material.dart';

import 'category_more_button.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    Key key,
    this.sectionName,
    this.children,
  }) : super();

  @required
  final String sectionName;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(),
      child: Column(
        children: [
          CategoryAndMoreButton(sectionName: sectionName),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
