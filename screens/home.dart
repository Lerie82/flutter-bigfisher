import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('header')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login Now'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/acct_login');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Create Account'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/acct_create');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Product'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/prod_add');
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('My Products'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/prod_my');
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/prod_search');
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('My Store'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/store_dash');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/acct_settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Messages'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/acct_msgs');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('home'),
          ],
        ),
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
