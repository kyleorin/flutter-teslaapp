import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*ListTile(
                title: Text('My Model S'),
                subtitle: Text('317ml \n Parked'),
                isThreeLine: true,
              ),*/
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Model S',
                          style: Theme.of(context).textTheme.headline6),
                      Text('317ml',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white)),
                      Text('Parked',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white38))
                    ],
                  )),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                child: Icon(
                  Icons.person,
                  color: Colors.white38,
                  size: 35,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/teslacar.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.lock, color: Colors.white),
              Icon(Icons.ac_unit_rounded, color: Colors.white),
              Icon(Icons.airline_seat_flat_angled_rounded, color: Colors.white),
              Icon(Icons.workspaces_rounded, color: Colors.white),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: ListTile(
                leading:
                    Icon(Icons.car_rental, color: Colors.white38, size: 35),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white38),
                title: Text('Controls',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize! *
                                1.1,
                        fontWeight: FontWeight.bold)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading:
                    Icon(Icons.air_rounded, color: Colors.white38, size: 35),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white38),
                title: Text('Climate',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize! *
                                1.1,
                        fontWeight: FontWeight.bold)),
                subtitle: Text('Active. Interior 74'),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading:
                    Icon(Icons.car_rental, color: Colors.white38, size: 35),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white38),
                title: Text('Summon',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize! *
                                1.1,
                        fontWeight: FontWeight.bold)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading:
                    Icon(Icons.shield_rounded, color: Colors.white38, size: 35),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white38),
                title: Text('Security',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize! *
                                1.1,
                        fontWeight: FontWeight.bold)),
              )),
          Divider(),
        ],
      )),
    );
  }
}
