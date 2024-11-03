import 'dart:math';

import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQji7VeicQwHSRawVGCcD5n_L6s1d0nAR6Mw&s',
      'https://ew.com/thmb/2nzZnTK6v-gy7avcYbvw0F17cbQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/endgame-poster-2000-513c47c947ae462da2bb7941c7bbc14f.jpg',
      'https://www.myvue.com/-/jssmedia/vuecinemas/img/import/7e5fc7a1-351f-403a-8573-0ac6f81dcfa4_kingdom-of-the-planet-of-the-apes_posters_kingdomapes_teaser_1s.jpg',
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Downloads",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.cast,
            color: Colors.white,
          ),
          const SizedBox(
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              color: Colors.blue,
              height: 27,
              width: 27,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Smart Downloads",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            const Center(
              child: Text(
                "Introducing Downloads for You",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              "we'll download a personalised selection of movies and shows for you,so there is always something towatch on your device",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            Container(
              width: size.width - 30,
              height: size.width - 30,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.38,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                  DownloadImageWidget(
                    imageList: imageList[0],
                    margin: const EdgeInsets.only(left: 170),
                    angle: 20,
                    size: Size(size.width * 0.4, size.width * 0.48),
                    borderRadius: 8,
                  ),
                  DownloadImageWidget(
                    imageList: imageList[1],
                    margin: const EdgeInsets.only(right: 170),
                    angle: -20,
                    size: Size(size.width * 0.4, size.width * 0.48),
                    borderRadius: 8,
                  ),
                  DownloadImageWidget(
                    imageList: imageList[2],
                    margin: const EdgeInsets.only(bottom: 18),
                    size: Size(size.width * 0.4, size.width * 0.55),
                    borderRadius: 12,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Set Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                color: const Color.fromARGB(255, 35, 74, 153),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), 
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "See what you can download",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      5), // Adjust the value for more or less roundness
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
    required this.borderRadius,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
