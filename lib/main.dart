import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Personal Card',
            style: TextStyle(color: Colors.white, fontSize: 28.0),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100.0, bottom: 20.0),
                width: 200.0,
                child: const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1-400x400.jpg.webp'),
                ),
              ),
              const Text(
                'Capybara',
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Playwrite Australia Tasmania',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 400.0,
                margin: const EdgeInsets.only(left: 40, right: 40, top: 80.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // Name
                        'Student at Linneaus University',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.email, size: 28.0),
                          SizedBox(width: 20.0),
                          Text(
                            'John Doe',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.phone, size: 28.0),
                          SizedBox(width: 20.0),
                          Text(
                            '123 456 78 90',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.web, size: 28.0),
                          SizedBox(width: 20.0),
                          Text(
                            'https://javajoy.store',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
