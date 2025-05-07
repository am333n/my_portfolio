import 'package:my_portfolio/service/js_delivery.dart';

class ProfileDetailsModel {
  final String fullName;
  final String description;
  final String linkedinUrl;
  final String githubUrl;
  final String image;
  final String email;
  final String cvUrl;

  // Constructor
  ProfileDetailsModel({
    required this.fullName,
    required this.description,
    required this.linkedinUrl,
    required this.githubUrl,
    required this.email,
    required this.cvUrl,
    required this.image,
  });
}

final ProfileDetailsModel myProfileDetails = ProfileDetailsModel(
  fullName: 'Muhammad Ameen',
  image: JsDeliver.convertToJsDeliver(
      'https://github.com/am333n/portfolio_cdn/blob/main/images/my_photo.png'),
  description:
      'A passionate software developer with expertise in mobile and cross platform application development',
  linkedinUrl: 'https://www.linkedin.com/in/muhammad-ameen-b05a76258',
  githubUrl: 'https://github.com/am333n',
  email: 'muhammedameen752@gmail.com',
  cvUrl: JsDeliver.convertToJsDeliver(
      'https://github.com/am333n/portfolio_cdn/blob/main/docs/my_cv.pdf'),
);
