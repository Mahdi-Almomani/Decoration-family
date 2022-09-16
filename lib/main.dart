import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.pink, Colors.green])),
          child: Column(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                child: Text(
                  "hello from first container",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(3, 5),
                        spreadRadius: 15,
                        blurRadius: 20,
                      )
                    ],
                    color: Colors.pink,
                    border: Border.all(color: Colors.black, width: 15)),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 200,
                width: 400,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ey3y4FUHiDknUPI-Qy7LpaNZKn2m0OatVVYsLQ_Q&s"),
                  ),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "this container has a picture",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(20),
                          )),
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(
                        "first container in row",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(50))),
                      alignment: Alignment.center,
                      height: 100,
                      child: Text(
                        "seconed container in row",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
