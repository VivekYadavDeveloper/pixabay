import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../Data/Models/model.dart';
// Import the model

class ImageTile extends StatelessWidget {
  final Hit image;

  const ImageTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CachedNetworkImage(
            imageUrl: image.webformatUrl!,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Likes: ${image.likes}'),
              Text('Views: ${image.views}'),
            ],
          ),
        ),
      ],
    );
  }
}
