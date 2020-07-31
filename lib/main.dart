import 'package:flutter/material.dart';
import 'package:search_image_app/components/image.dart';

import 'components/header_with_searchbar.dart';
import 'components/images_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search images',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.blueGrey,
          primaryColorDark: Colors.blueGrey[700],
          primaryColorLight: Colors.blueGrey[300],
          accentColor: Colors.red[300]),
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(),
          // the image searched goes here
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ImagesList(
                  sectionName: 'Photos',
                  children: [
                    ImageViewer(
                      image: "assets/images/photos/bird.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/photos/image_dog.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/photos/skater.jpg",
                    ),
                  ],
                ),
                ImagesList(
                  sectionName: 'Illustrations',
                  children: [
                    ImageViewer(
                      image: "assets/images/illustrations/city.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/illustrations/eyes.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/illustrations/kiss.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/illustrations/man_and_car.webp",
                    ),
                  ],
                ),
                ImagesList(
                  sectionName: 'Vectors',
                  children: [
                    ImageViewer(
                      image: "assets/images/vectors/avocado.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/vectors/camp.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/vectors/tree.webp",
                    ),
                    ImageViewer(
                      image: "assets/images/vectors/wolf.webp",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
