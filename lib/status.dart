/*import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Table(children: [
      TableRow(children: [
        Text("org.package.Service1",style: TextStyle(color: Colors.red,fontSize: 18)),
        Text("12",style: TextStyle(color: Colors.red,fontSize: 18))
      ]),
      TableRow(children: [
        Text("org.package.Service3",style: TextStyle(color: Colors.green,fontSize: 18)),
        Text("1",style: TextStyle(color: Colors.orange,fontSize: 18))
      ]),
      TableRow(children: [
        Text("org.package.Service4",style: TextStyle(color: Colors.green,fontSize: 18)),
        Text("0",style: TextStyle(color: Colors.orange,fontSize: 18))
      ]),
    ]);
  }
}*/

import 'package:flutter/material.dart';
import 'dart:math';


class Status extends StatelessWidget {

  Widget build(BuildContext context) {
    final GlobalKey _menuKey = new GlobalKey();
    List<int> luckyNumbersList = [7, 69, 420, 100];

    ListTile s1=  new ListTile(
      title: new Text("Service3",style: TextStyle(color: Colors.red,fontSize: 12)),
      onTap: () {
        dynamic popUpMenustate = _menuKey.currentState;
        popUpMenustate.showButtonMenu();
      },
    );


    return new MaterialApp(
      home: new Scaffold(
        body: Card(
        child : Column(
          children: <Widget>[
             ExpansionTile(
                key: new Key(new Random().nextInt(10000).toString()),
                initiallyExpanded: false,
                title: new Text("01012019 Group 001 2/3",style: TextStyle(color: Colors.red,fontSize: 12)),
                backgroundColor: Theme
                    .of(context)
                    .accentColor
                    .withOpacity(0.025),
                children: [
                  new ListTile(
                    title: const Text("Service1",style: TextStyle(color: Colors.green,fontSize: 12))
                  ),
                  new ListTile(
                    title: const Text("Service2",style: TextStyle(color: Colors.green,fontSize: 12))
                  ),
                  new ListTile(
                    title: s1
                  ),
                ]
            ),
            ExpansionTile(
                key: new Key(new Random().nextInt(10000).toString()),
                initiallyExpanded: false,
                title: new Text("01012019 Group 002 0/3",style: TextStyle(color: Colors.green,fontSize: 12)),
                backgroundColor: Theme
                    .of(context)
                    .accentColor
                    .withOpacity(0.025),
                children: [
                  new ListTile(
                      title: const Text("Service1",style: TextStyle(color: Colors.green,fontSize: 12))
                  ),
                  new ListTile(
                      title: const Text("Service2",style: TextStyle(color: Colors.green,fontSize: 12))
                  ),
                  new ListTile(
                      title: const Text("Service3",style: TextStyle(color: Colors.green,fontSize: 12))
                  ),
                ]
            )
          ]
        ),
        ),
      ),
    );
  }
}


