import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Week2"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: Text(title),
        ),
        body: Center(
            child: Stack(
                children: [
                  Positioned(
                    top: 200,
                    left: 45,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 45,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    bottom: 220,
                    left: 45,
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.yellow[400],
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                  Positioned(
                    bottom: 220,
                    right: 45,
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                  Positioned(
                    bottom: 180,
                    left: 156.5,
                    child: Center(
                      child: Text(
                        'abou_time',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',// Adjust the font size as needed
                        ),
                      ),
                    ),
                  ),


                ]

            )
        )
    );
  }
}
