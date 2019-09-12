import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Bluetooth & WiFi Data Collection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
//      //This can be the method used to share the logs created with the app. Maybe have it open to a share window.
//
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

  //This is where the Bluetooth and WiFi logs would be collected and start.
  void _startBluetoothLogging() {}

  void _startWiFILogging() {}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    var buttonRow = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton.icon(
          onPressed: _startBluetoothLogging,
          icon: Icon(Icons.bluetooth),
          label: Text('Start Bluetooth Logging'),
        ),
        RaisedButton.icon(
          onPressed: _startWiFILogging,
          icon: Icon(Icons.wifi),
          label: Text('Start WiFi Logging'),
        ),
      ],
    );

    var bottomNavBar = new BottomNavigationBar(
      backgroundColor: Colors.purple,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.home)),
                title: Text('Home', style: new TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
            icon: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.settings)),
                title: Text('Settings', style: new TextStyle(color: Colors.white),),
        ),

      ],
    );

    var scaffold = Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'This is an application created to collect Bluetooth data during stress testing. Please ensure the phone will not turn off the display or go to sleep at any time.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              buttonRow,
            ],
          ),
        ),
        bottomNavigationBar: bottomNavBar);
    return scaffold;
  }
}
