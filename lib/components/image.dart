import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key key, this.image}) : super();

  @required
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.3,
      margin: EdgeInsets.only(top: 50, left: 10, right: 10),
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.black12,
          )
        ],
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
