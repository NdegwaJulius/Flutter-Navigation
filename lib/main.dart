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
        primarySwatch: Colors.blue,
      ),
      home: const FirstRoute(title: 'Flutter Demo Home Page'),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('First Route'),
        centerTitle: true,
      ),
      body: Center(

        child: ElevatedButton(
          child: Text('Open Route'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute() ),);
          },
          // Navigate to second route when tapped.
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Second Route'),
        centerTitle: true,
      ),
      body: Center(

        child: ElevatedButton(
          child: Text('Go Back Route'),
          onPressed: (){
            Navigator.pop(context);
          },
          // Navigate to first route when tapped.
        ),
      ),
    );
  }
}

