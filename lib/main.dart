import 'package:flutter/material.dart';
import 'package:flutterflow/sections/Logado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cavalo',
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
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'cavalo',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          toolbarHeight: 60,
        ),
        body: const Login(),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(children: [
        Column(
          children: const [
            Image(image: AssetImage('/images/cavalo.jpg'), )],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70, right: 40, left: 40),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Email')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 40, left: 40),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Senha')),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Logado())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:const Size(150, 50),
                  
                    backgroundColor: Colors.blue, 
                    ),
                  
                  child: const Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 24),),
                )),
          ],
        )
      ]),
    );
  }
}
