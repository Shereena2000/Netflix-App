import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/video_action_widget.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  final String logoImageUrls;
  final String videoImageUrls;
  const VideoListItem(
      {super.key, required this.index, required this.logoImageUrls, required this.videoImageUrls});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
           decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(videoImageUrls),
            fit: BoxFit.cover        ,  
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.volume_off,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              //right side
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(logoImageUrls),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const VideoActionWidget(
                        icon: Icons.emoji_emotions, title: "LOL"),
                    const VideoActionWidget(icon: Icons.add, title: "My List"),
                    const VideoActionWidget(icon: Icons.share, title: "share"),
                    const VideoActionWidget(
                        icon: Icons.play_arrow, title: "Play")
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
