import 'package:flutter/material.dart';
import 'package:search_image_app/components/text_input_container.dart';
import 'package:search_image_app/components/user_text_input.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      child: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 60),
          child: Text(
            'Search your images',
            style: Theme.of(context).primaryTextTheme.headline4,
            textAlign: TextAlign.right,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            child: TextInputContainer(
              child: UserTextInput(
                hinText: 'e.g Cars',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
