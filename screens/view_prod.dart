import 'package:flutter/material.dart';

class ViewProdPage extends StatefulWidget {
  ViewProdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ViewProdPageState createState() => _ViewProdPageState();
}

class _ViewProdPageState extends State<ViewProdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://picsum.photos/400/200',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '\$9',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sample Product',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    child: Text('Send Message'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/acct_msgs');
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.greenAccent),
                    ),
                    child: Text('Buy Now'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buy_confirm');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
