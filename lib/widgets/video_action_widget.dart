import 'package:flutter/material.dart';

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 35, 
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16 ),
          )
        ],
      ),
    );
  }
}
