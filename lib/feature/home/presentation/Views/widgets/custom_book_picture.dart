import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookpicture extends StatelessWidget {
  const CustomBookpicture({
    super.key,
    this.imageurl =
        'https://books.google.com/books/content?id=INxjEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
    this.onTap,
  });
  final String imageurl;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: imageurl,

            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
