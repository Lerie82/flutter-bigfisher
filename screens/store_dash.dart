import 'package:flutter/material.dart';

class StoreDashboardPage extends StatefulWidget {
  StoreDashboardPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _StoreDashboardPageState createState() => _StoreDashboardPageState();
}

class _StoreDashboardPageState extends State<StoreDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('dashboard'),
          ],
        ),
      ),
    );
  }
}
