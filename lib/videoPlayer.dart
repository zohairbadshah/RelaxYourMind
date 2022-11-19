import 'package:flutter/cupertino.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'ddd.dart';


class Video_player extends StatefulWidget {
  @override
  _Video_playerState createState() => _Video_playerState();
}


class _Video_playerState extends State<Video_player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,


      body: Stack(
        children:[

          VideoItems(
          videoPlayerController: VideoPlayerController.asset('images/a.mp4'),
          looping: true,
          autoplay: true,
        ),IconButton(icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
            Navigator.pop(context);
          },),]
      ),
    );
  }
}
