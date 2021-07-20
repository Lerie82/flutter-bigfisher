import 'package:flutter/material.dart';
import '/bigfisher/forms/create_acct_form.dart';

class CreatePage extends StatefulWidget {
  CreatePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
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
            CreateAcctForm(),
          ],
        ),
      ),
    );
  }
}
