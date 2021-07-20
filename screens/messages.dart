import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  MessagesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('messages'),
          ],
        ),
      ),
    );
  }
}
