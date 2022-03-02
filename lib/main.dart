import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integration Test Setup'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Click Me!'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          RaisedButton(
            child: Text('Tap Me!'),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
        ],
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        key: Key('clickMePageBody'),
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!, Currently You are on Click Me Page'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        key: Key('tapMePageBody'),
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Back!, Currently You are on Tap Me Page',
          ),
        ),
      ),
    );
  }
}
