import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/movie_Recommendation_models.dart';
import 'package:netflix_clone/models/movie_detailed_model.dart';
import 'package:netflix_clone/sevieces/api_services.dart';

class MovieDetailScreen extends StatefulWidget {
  final int movieId;
  const MovieDetailScreen({super.key, required this.movieId});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  ApiServices apiServices = ApiServices();
  late Future<MovieDetailModel> movieDeails;
  late Future<MovieRecommendationsModel> movieRecomendation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchInitialData();
  }

  fetchInitialData() {
    movieDeails = apiServices.getMovieDetail(widget.movieId);
    movieRecomendation = apiServices.getMovieRecommendation(widget.movieId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: movieDeails,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final movie = snapshot.data;
                String genreText = movie!.genres
                    .map(
                      (genre) => genre.name,
                    )
                    .join(',');
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage("$ImageUrl${movie!.backdropPath}"),
                            ),
                          ),
                          child: SafeArea(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              movie.releaseDate.year.toString(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              genreText,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          movie.overview,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FutureBuilder(
                        future: movieRecomendation,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final recommendedmovie = snapshot.data;
                            return recommendedmovie!.results.isEmpty
                                ? SizedBox()
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("More like this"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      GridView.builder(
                                          itemCount:
                                              recommendedmovie.results.length,
                                          physics: NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  mainAxisSpacing: 15,
                                                  childAspectRatio: 1.5 / 2),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MovieDetailScreen(
                                                                movieId:
                                                                    recommendedmovie
                                                                        .results[
                                                                            index]
                                                                        .id)));
                                              },
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "${ImageUrl}${recommendedmovie.results[index].posterPath}",
                                              ),
                                            );
                                          })
                                    ],
                                  );
                          }
                          return const Text("Loading...",style: TextStyle(color: Colors.grey),);
                        })
                  ],
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
