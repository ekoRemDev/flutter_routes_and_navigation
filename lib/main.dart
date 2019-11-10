import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
      routes: {
        '/second':(_)=> SecondPage(data: "This is Static Data coming from there",)
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'First Page',
              style: TextStyle(fontSize: 50.00),
            ),
            RaisedButton(
                child: Text('Go To Second'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                })
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Second Page',style: TextStyle(fontSize: 50.00),),
            Text(data,style: TextStyle(fontSize: 20.00),),
          ],
        ),
      ),
    );
  }
}
