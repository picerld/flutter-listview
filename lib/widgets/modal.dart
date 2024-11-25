import 'package:flutter/material.dart';

Future<void> dialogBuilder(BuildContext context,
    {required String title, required Image image}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image(
                image: image.image,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: Text(
                title,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('Lorem ipsum dolor sit amet.'),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Tutup'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
