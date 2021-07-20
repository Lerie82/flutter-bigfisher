import 'package:flutter/material.dart';

class UpdateProdPage extends StatefulWidget {
  UpdateProdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _UpdateProdPageState createState() => _UpdateProdPageState();
}

class _UpdateProdPageState extends State<UpdateProdPage> {
  int _counter = 0;

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Product',
        child: Icon(Icons.add),
      ),
    );
  }
}
