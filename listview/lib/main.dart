// ignore_for_file: prefer_const_constructors

import 'dart:js';

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
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 450,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.all(2),
                              color: Colors.green,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 100,
                                  width: 150,
                                  color: Colors.white,
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    height: 95,
                                    width: 145,
                                    color: Colors.green,
                                  )
                                  ),
                            ),
                      
                             Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 70,
                                  width: 100,
                                  color: Colors.white,
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    height: 65,
                                    width: 90,
                                    color: Colors.green,
                                  )
                               ),
                            ),
                             Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50,
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 48,
                                ),
                              )
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 2,
                                  color: Colors.white,
                               ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 100,
                                  width: 150,
                                  color: Colors.white,
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    height: 95,
                                    width: 145,
                                    color: Colors.green,
                                  )
                                  ),
                            ),
                             Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 70,
                                  width: 100,
                                  color: Colors.white,
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    height: 65,
                                    width: 90,
                                    color: Colors.green,
                                  )
                               ),
                            ),
                            
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              );
            }),
      ),
    );
  }
}
