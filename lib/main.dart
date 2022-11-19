import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mind_Relax/videoPlayer.dart';

import 'Chat.dart';

var index = 0;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.account_circle_outlined),
                      onPressed: () {}),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: Icon(Icons.messenger_outline_rounded),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()),);
                      }),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'New to meditation? Try this.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 25),
                child: Container(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Getting Started with\nMeditation',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '7days course',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 60, 20, 0),
                        child: CircleAvatar(
                          radius: 25,
                          child: IconButton(icon: Icon(Icons.play_arrow),onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Video_player()),);
                          },),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_M4_IcMon_EBZFakkA_UIvkQSde1FUfwjHA&usqp=CAU',
                          ))),
                ),
              ),
              Text('Daily Meditation',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRXEfamoZIPFwwIV3MmCnH5VRkKvrfYPl0Dw&usqp=CAU')),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Warrior's Breath",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Daily Meditation',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ))
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: CircleAvatar(
                        radius: 20,
                        child: IconButton(icon: Icon(Icons.play_arrow),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Video_player()),);
                        },),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Recommended',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2sEk0UdS8nj6dhlyPKBH9zVkaNfhCt-mlA&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Sleep Meditation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Deeply Relaxing',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2sEk0UdS8nj6dhlyPKBH9zVkaNfhCt-mlA&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Sleep Meditation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Deeply Relaxing',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2sEk0UdS8nj6dhlyPKBH9zVkaNfhCt-mlA&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Sleep Meditation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Deeply Relaxing',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2sEk0UdS8nj6dhlyPKBH9zVkaNfhCt-mlA&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Sleep Meditation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Deeply Relaxing',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Yoga Asanas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtIHYIj_kjW92t6hNW4VoAMFyyrk9AqVby9Q&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Asanas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Asanas',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtIHYIj_kjW92t6hNW4VoAMFyyrk9AqVby9Q&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Asanas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Asanas',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtIHYIj_kjW92t6hNW4VoAMFyyrk9AqVby9Q&usqp=CAU'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text('Asanas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          'Asanas',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: FlatButton(
                  child: Text(
                    'Get Premium',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      )),

    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
