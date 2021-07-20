import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecieptPage extends StatefulWidget {
  RecieptPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _RecieptPageState createState() => _RecieptPageState();
}

class _RecieptPageState extends State<RecieptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('receipt for purchase'),
      ),
    );
  }
}
