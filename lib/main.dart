import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Widget> _buildCardList(BuildContext context) {
    List<Widget> cards = [];
    for (int i = 0; i < 30; i++) {
      cards.add(
        buildCard(
          context,
          Image.network(i % 2 == 0
              ? 'https://picsum.photos/200/400'
              : 'https://picsum.photos/200/300'),
          'Title $i',
        ),
      );
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tugas 2'),
      ),
      body: ListView(
        children: _buildCardList(context),
      ),
    );
  }
}
