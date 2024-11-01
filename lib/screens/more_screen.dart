import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/coming_soon_movie_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            title: const Text(
              "New & hot",
              style: TextStyle(color: Colors.white),
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
            bottom: TabBar(
              dividerColor: Colors.black,
              isScrollable: false,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              labelColor: Colors.black,
              labelStyle:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              unselectedLabelColor: Colors.white,
              tabs:const [
                Tab(
                  text: " 🍿 Coming Soon ",
                  height: 50,
                ),
                Tab(
                  text: " 🔥 Everyone's Watching ",
                  height: 50,
                )
              ],
            ),
          ),  body: const TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
          
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original/apbrbWs8M9lyOpJYU5WXrpFbk1Z.jpg',
                    overView:
                        'A missing child sets four families on a frantic hunt for answers as they unearth a mind-bending mystery that spans three generations.',
                    logoUrl:
                        "https://w0.peakpx.com/wallpaper/803/135/HD-wallpaper-dark-logo-dark-netflix-dark-season-dark-web-series-german-sci-fi-thriller.jpg",
                    month: "Jan",
                    day: "23",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   ComingSoonMovieWidget(
                    imageUrl:
                        'https://miro.medium.com/v2/resize:fit:1024/1*P_YU8dGinbCy6GHlgq5OQA.jpeg',
                    overView:
                        'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.',
                    logoUrl:
                        "https://s3.amazonaws.com/www-inside-design/uploads/2017/10/strangerthings_feature-983x740.jpg",
                    month: "Jun",
                    day: "19",
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original/czembW0Rk1Ke7lCJGahbOhdCuhV.jpg',
                    overView:
                        'A Filipino romance film starring Joshua Garcia and Julia Barreto. Some say it is a decent, predictable, and formulaic film, but the ending is a standou'
                  ,  logoUrl:
                        "https://image.tmdb.org/t/p/original/hMXA6XiQoqKfqHk3xEKX5WlND4U.jpg",
                    month: "April",
                    day: "24",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                    
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://wallpapers.com/images/featured/game-of-thrones-background-92acb30ilmkjbmu9.jpg',
                    overView:
                        'follows a large cast of characters and interwoven story arcs. It is primarily set on the fictional continent of Westeros, which is divided into the Seven Kingdoms',
                    logoUrl:
                        "https://seeklogo.com/images/G/game-of-thrones-logo-20E37C96FE-seeklogo.com.png",
                    month: "May",
                    day: "19",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJlpkhsEyZSWBKbWEuOGrTj1aUe4pa4VCpXQ&s',
                    overView:
                        'During a low-power test, technicians at the plant ignored safety measures and performed a poorly designed experiment..',
                    logoUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjZRUdn6VM_tI_ZwUfkwysWNAId6HvUnh7PQ&s",
                    month: "Feb",
                    day: "15",
                  ),
                  SizedBox(
                    height: 20,
                  ),
               
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original/NNxYkU70HPurnNCSiCjYAmacwm.jpg',
                    overView:
                        'When U.S. government operative Ethan Hunt and his mentor, Jim Phelps, go on a covert assignment that takes a disastrous turn, Jim is killed, ',
                    logoUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKXRWgk8wv6R0dmLk9sXnLWfuX0MEykpNujw&s",
                    month: "Aug",
                    day: "17",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://www.pinkvilla.com/images/2022-09/rrr-review.jpg',
                    overView:
                        'A fearless revolutionary and an officer in the British force, who once shared a deep bond, decide to join forces and chart out an inspirational path of freedom against the despotic rulers.',
                    logoUrl:
                        "https://www.careerguide.com/career/wp-content/uploads/2023/10/RRR_full_form-1024x576.jpg",
                    month: "Dec",
                    day: "24",
                  ),
                ],
              ),
            ),

            ////everyone watching tab
            SingleChildScrollView(
              child: Column(
                children: [
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://miro.medium.com/v2/resize:fit:1024/1*P_YU8dGinbCy6GHlgq5OQA.jpeg',
                    overView:
                        'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.',
                    logoUrl:
                        "https://logowik.com/content/uploads/images/stranger-things4286.jpg",
                    month: "Aug",
                    day: "2",
                  ),
                    SizedBox(
                    height: 20,
                  ),
                   ComingSoonMovieWidget(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGLOJu-X1F2smnA6BTP6zm5HZVsN7tsLqtUw&s',
                    overView:
                        'Christopher McCandless, a top student and athlete, donates his savings and hitch-hikes to Alaska to live in the wilderness.',
                    logoUrl:
                        "https://cdn.textstudio.com/output/sample/normal/5/6/4/7/into-the-wild-logo-275-17465.png",
                    month: "Oct",
                    day: "6",
                  ),
                    SizedBox(
                    height: 20,
                  ),
                    ComingSoonMovieWidget(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original/czembW0Rk1Ke7lCJGahbOhdCuhV.jpg',
                    overView:
                        'A Filipino romance film starring Joshua Garcia and Julia Barreto. Some say it is a decent, predictable, and formulaic film, but the ending is a standou'
                  ,  logoUrl:
                        "https://image.tmdb.org/t/p/original/hMXA6XiQoqKfqHk3xEKX5WlND4U.jpg",
                    month: "April",
                    day: "24",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                    
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://wallpapers.com/images/featured/game-of-thrones-background-92acb30ilmkjbmu9.jpg',
                    overView:
                        'follows a large cast of characters and interwoven story arcs. It is primarily set on the fictional continent of Westeros, which is divided into the Seven Kingdoms',
                    logoUrl:
                        "https://seeklogo.com/images/G/game-of-thrones-logo-20E37C96FE-seeklogo.com.png",
                    month: "May",
                    day: "19",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJlpkhsEyZSWBKbWEuOGrTj1aUe4pa4VCpXQ&s',
                    overView:
                        'During a low-power test, technicians at the plant ignored safety measures and performed a poorly designed experiment..',
                    logoUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjZRUdn6VM_tI_ZwUfkwysWNAId6HvUnh7PQ&s",
                    month: "Feb",
                    day: "15",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
