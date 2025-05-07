import 'dart:developer';

class JsDeliver {
  // Function to convert any image URL to the jsDelivr CDN link
  static String convertToJsDeliver(String imageUrl) {
    // Check if the URL starts with GitHub
    if (imageUrl.startsWith("https://github.com/")) {
      // Remove the "https://github.com/" part
      String path = imageUrl.replaceFirst("https://github.com/", "");

      // Remove the "/blob" part if present
      path = path.replaceFirst("/blob", "");

      // Remove the explicit branch name "main" if it's part of the URL
      path = path.replaceFirst("/main", ""); // Remove "/main" specifically

      // Return the jsDelivr URL
      final url = "https://cdn.jsdelivr.net/gh/$path";
      log(url); // Log the generated URL for debugging
      return url;
    } else {
      throw FormatException("Invalid GitHub URL.");
    }
  }
}
