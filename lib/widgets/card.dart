import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/modal.dart';

Widget buildCard(BuildContext context, Image image, String title) {
  return InkWell(
    mouseCursor: SystemMouseCursors.click,
    onTap: () => dialogBuilder(context, title: title, image: image),
    child: Card(
      color: Colors.grey[240],
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: Image(image: image.image).image,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    ),
  );
}
