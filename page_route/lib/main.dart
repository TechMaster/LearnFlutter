import 'package:flutter/material.dart';
//https://medium.com/@kpbird/flutter-introduction-of-routing-and-navigation-49738dbd6abe
void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: Screen1(),
      routes: <String, WidgetBuilder>{
        '/screen2': (BuildContext context) => new Screen2(),
        '/screen3': (BuildContext context) => new Screen3()
      }));
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new RaisedButton(
                padding: const EdgeInsets.all(12.0),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                },
                child: new Text("Go to Screen 2"),
              ),
              new RaisedButton(
                padding: const EdgeInsets.all(12.0),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed('/screen3');
                },
                child: new Text("Go to Screen 3"),
              ),
              Text('Demo Routing', textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen3"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
