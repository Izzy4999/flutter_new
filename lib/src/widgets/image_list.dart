import 'package:flutter/material.dart';
import "../models/image_model.dart";

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  const ImageList({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Image.network(image.url),
        ),
        Text(image.title),
      ]),
    );
  }
}
