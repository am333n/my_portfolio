import 'package:url_launcher/url_launcher.dart';

class Launcher {
  // Function to open a URL in a new tab
  static void openNewTab(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
        enableJavaScript: true,
      );
    } else {
      print('Could not launch $url');
    }
  }

  static void openMail(String emailAddress,
      {String? subject, String? body}) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      queryParameters: {
        'subject': subject ?? '',
        'body': body ?? '',
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      print('Could not open email client');
    }
  }
}
