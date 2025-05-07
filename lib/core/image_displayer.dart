import 'package:flutter/widgets.dart';

class ImageDisplayer extends StatelessWidget {
  const ImageDisplayer({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.sizeOf(context).width * 0.2, // Max width of the image
          maxHeight:
              MediaQuery.sizeOf(context).width * 0.2, // Max height of the image
        ),
        child: AspectRatio(
          aspectRatio: 1, // Ensures the image is square (1:1)
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
