import 'package:flutter/material.dart';

class PurchasesPage extends StatefulWidget {
  PurchasesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _PurchasesPageState createState() => _PurchasesPageState();
}

class _PurchasesPageState extends State<PurchasesPage> {
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
            Text('settings'),
          ],
        ),
      ),
    );
  }
}
