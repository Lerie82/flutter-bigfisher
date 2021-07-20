import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmBuyPage extends StatefulWidget {
  ConfirmBuyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ConfirmBuyPageState createState() => _ConfirmBuyPageState();
}

class _ConfirmBuyPageState extends State<ConfirmBuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Confirm this purchase'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/receipt');
              },
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
