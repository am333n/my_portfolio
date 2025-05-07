import 'package:my_portfolio/service/js_delivery.dart';

class Skill {
  final String url;
  final String title;
  final String description;

  // Constructor
  Skill({
    required this.url,
    required this.title,
    required this.description,
  });
}

List<Skill> mySkills = [
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/firebase_icon.png'),
    title: "Firebase",
    description: "Real-time database, authentication, cloud functions.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/bloc_icon.png'),
    title: "BLoC",
    description: "State management using streams and reactive programming.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/git_icon.png'),
    title: "Git",
    description: "Version control, collaboration, and code hosting.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/dart_icon.png'),
    title: "Dart",
    description: "Cross-platform mobile app development framework.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/cid_icon.png'),
    title: "CI/CD",
    description: "Programming language used in Flutter development.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/figma_icon.png'),
    title: "Figma",
    description: "Cloud-based file storage for apps.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        "https://github.com/am333n/portfolio_cdn/blob/main/icons/rest_api.jpg"),
    title: "REST-API",
    description:
        "Continuous Integration and Continuous Delivery for automated testing and deployment.",
  ),
  Skill(
    url: JsDeliver.convertToJsDeliver(
        'https://github.com/am333n/portfolio_cdn/blob/main/icons/ui_ux_icon.png'),
    title: "UI/UX",
    description:
        "Query language for APIs and a runtime for executing those queries with your existing data.",
  ),
];
