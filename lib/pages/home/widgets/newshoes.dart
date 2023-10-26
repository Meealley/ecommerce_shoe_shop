import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewShoes extends StatelessWidget {
  final String imageUrl;
  const NewShoes({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade600),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.30,
      // child: Image.asset('assets/images/jordan.png'),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) =>
            const CircularProgressIndicator(), // Shown while the image is loading
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
