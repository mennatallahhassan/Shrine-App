import 'package:flutter/material.dart';

void main() => runApp(ShrineApp());

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shrine App'),
        ),
        body: LoginPage(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      children: [
        SizedBox(height: 80.0),
        Column(
          children: [
            Image.asset('assets/diamond.png'),
            SizedBox(height: 16.0),
            Text('SHRINE'),
          ],
        ),
        SizedBox(height: 120.0),
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
          ),
        ),
        SizedBox(height: 12.0),
        // [Password]
        TextField(
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),

        ButtonBar(
          children: [
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('NEXT'),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
