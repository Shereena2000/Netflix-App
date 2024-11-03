import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/video_list_item.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> logoImageUrls = [
      "https://w0.peakpx.com/wallpaper/803/135/HD-wallpaper-dark-logo-dark-netflix-dark-season-dark-web-series-german-sci-fi-thriller.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkUNPSUGv0AZzGr0329yexdWiXYCBupNHKhd7GmQsfXhCX5DlCDmrX4qmoAALkqM1ifTU&usqp=CAU",
      "https://static.vecteezy.com/system/resources/previews/020/489/595/non_2x/kgf-letter-logo-design-in-illustration-logo-calligraphy-designs-for-logo-poster-invitation-etc-vector.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmVNU7xs4UQChyQXrLs8KCgwRgbYPgwtmUzQ&s",
      "https://images-platform.99static.com/x4zv0ZNVFJKfDxY7MY_rffpmlX8=/125x149:1085x1109/500x500/top/smart/99designs-contests-attachments/63/63348/attachment_63348397"
    ];
    final List<String> videoImageUrls = [
      "https://image.tmdb.org/t/p/original/apbrbWs8M9lyOpJYU5WXrpFbk1Z.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/oxmdHR5Ka28HAJuMmS2hk5K6QQY.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/khNVygolU0TxLIDWff5tQlAhZ23.jpg",
      "https://image.tmdb.org/t/p/w300_and_h450_bestv2/9zfwPffUXpBrEP26yp0q1ckXDcj.jpg",
      "https://image.tmdb.org/t/p/w300_and_h450_bestv2/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg"
    ];
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(5, (index) {
        return VideoListItem(
          index: index,
          logoImageUrls: logoImageUrls[index],
          videoImageUrls: videoImageUrls[index],
        );
      }),
    )));
  }
}
