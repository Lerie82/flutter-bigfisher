import 'package:flutter/material.dart';

class MyProdsPage extends StatefulWidget {
  MyProdsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyProdsPageState createState() => _MyProdsPageState();
}

class _MyProdsPageState extends State<MyProdsPage> {
  final items = List<String>.generate(10, (i) => "Product $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
            onTap: () {
              Navigator.pushNamed(context, '/prod_view');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/prod_add');
        },
        tooltip: 'Add Product',
        child: Icon(Icons.add),
      ),
    );
  }
}
