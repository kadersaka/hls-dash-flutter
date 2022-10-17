import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testflutter3/network_base.dart';

import 'firebase_options.dart';

Future<void> main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextButton(
                onPressed: (){
                  BaseNetwork().httpGet("https://yutu-dev-api.ew.r.appspot.com/active-places");
                },
                child:const Text("GET Places"),
            ),

            TextButton(
                onPressed: (){
                  // BaseNetwork().httpGet("https://yutu-dev-api.ew.r.appspot.com/testcorsget");
                },
                child:const Text("GET /testcorsget"),
            ),

            /*
            ---------------requesting http://adminapp.dahotourism.com/api/reservations?locale=fr
I/flutter (19918): {circuit: /api/circuits_touristiques/8, referencePaiement: 9Z-EMaUpQ, dateCircuit: 2022-12-13T00:00:00.000, amount: null, user: /api/users/9}
             */
            TextButton(
                onPressed: (){
                  BaseNetwork().httpPut("https://yutu-dev-api.ew.r.appspot.com/active-places", {});
                },
                child:Text("PUT /active-places"),
            ),

            TextButton(
                onPressed: (){
                  BaseNetwork().httpPost("https://yutu-dev-api.ew.r.appspot.com/active-places", {});
                },
                child:Text("POST /active-places"),
            ),



          ],
        ),
      ),
    );
  }
}
