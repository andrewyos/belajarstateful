import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful demo")),
        body: ListView(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                RaisedButton(
                    child: Text("Tambah"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(counter.toString()));
                        counter++;
                      });
                    }),
                RaisedButton(
                  child: Text("Hapus"),
                  onPressed: (){
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                )
            ]),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You have pushed the button this many times : "),
              Text(counter.toString(), style: TextStyle(fontSize: 35 + counter.toDouble()),),


            ],
          ),

        ]),
      ),

    );
  }
}
