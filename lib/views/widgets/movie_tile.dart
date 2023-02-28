import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/models/movie_models/movie_model.dart';
import 'package:flutter_imdb_app/utils/colors.dart';

class MovieTile extends StatelessWidget {
  final MovieModel movieModel;
  const MovieTile({
    super.key,
    required this.movieModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //Todo: Open Movie Details Screen
      },
      child: CachedNetworkImage(
        imageUrl: movieModel.poster,
        placeholder: (context, url) => Container(
          color: kWhiteColor,
        ),
        errorWidget: (context, url, error) => Container(
          color: kWhiteColor,
          child: const Center(
            child: Text('Error: Loading Image'),
          ),
        ),
      ),
    );
  }
}
//         Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   movieModel.title,textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xffFFD700),
//                   ),
//                 ),
//                 Text(
//                   'Release Date: ${movieModel.year}',
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: kSecondaryColor,
//
//                   ),
//                 ),
//                 Text(
//                   'Type: ${movieModel.type}',textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: kSecondaryColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),