import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

ChewieController _chewieController;
class VideoItems extends StatefulWidget {
  @override
  VideoPlayerController videoPlayerController;
  bool looping;
  bool autoplay;
  _VideoItemsState createState() => _VideoItemsState();
  VideoItems({
    @required this.videoPlayerController,
    this.looping, this.autoplay,
    Key key,
  }) : super(key: key);
}

class _VideoItemsState extends State<VideoItems> {
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      autoPlay: widget.autoplay,
      looping: widget.looping,
      aspectRatio: 2/4,
      fullScreenByDefault: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}