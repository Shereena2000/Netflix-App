import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/top_rated.dart';
import 'package:netflix_clone/screens/movie_detailed_screen.dart';

class Top10CardWidget extends StatelessWidget {
  final Future<TopRated> future;
  final String headLineText;
  const Top10CardWidget(
      {super.key, required this.future, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Failed to load movies.'));
          }
          var data = snapshot.data?.results;
          if (data == null || data.isEmpty) {
            return const Center(child: Text('No movies available.'));
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headLineText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovieDetailScreen(
                                      movieId: data[index].id)));
                        },
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 40,   
                                  height: 150,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.network(
                                      "$ImageUrl${data[index].posterPath}"),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 0,         
                              bottom: -32,    
                              child: BorderedText(
                                strokeWidth: 3.0, 
                                strokeColor: Colors.white,
                                child: Text(
                                  "${index+1}",
                                  style:const TextStyle(
                                    color: Colors.black,
                                      fontSize: 120,  
                                      fontWeight: FontWeight.w900,  
                                      decoration: TextDecoration.none,
                                      decorationColor:  Colors.black),      
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          );
        });
  }
}
