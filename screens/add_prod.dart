import 'package:flutter/material.dart';
import '/bigfisher/forms/add_prod_form.dart';

class AddProdPage extends StatefulWidget {
  AddProdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AddProdPageState createState() => _AddProdPageState();
}

class _AddProdPageState extends State<AddProdPage> {
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
            AddProdForm(),
          ],
        ),
      ),
    );
  }
}
