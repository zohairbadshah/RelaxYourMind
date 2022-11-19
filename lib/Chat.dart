import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
        Navigator.pop(context);
      },),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        child: CircleAvatar(
                          radius: 50,
                        ),
                      ),
                      Positioned(
                        child: CircleAvatar(
                            radius: 50, backgroundColor: Colors.yellow),
                        left: 85,
                      ),
                      Positioned(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.red,
                        ),
                        left: 170,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'We are here to guide you through your Yoga & Meditation journey',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'if you have any question feel free to Contact our teachers.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
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
        ),
      ),
    );
  }
}
