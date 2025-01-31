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
  image: 'assets/images/my_photo.png',
  description:
      'A passionate software developer with expertise in mobile and web development.',
  linkedinUrl: 'https://www.linkedin.com/in/johndoe',
  githubUrl: 'https://github.com/am333n',
  email: 'muhammedameen752@gmail.com',
  cvUrl: 'https://www.example.com/johndoe_cv.pdf',
);
