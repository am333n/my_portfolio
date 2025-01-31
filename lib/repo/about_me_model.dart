class AboutMe {
  final String title;
  final String description;
  final String yearsOfExperience;
  final String projectsCompleted;

  // Constructor
  AboutMe({
    required this.title,
    required this.description,
    required this.yearsOfExperience,
    required this.projectsCompleted,
  });
}

final AboutMe myAboutMe = AboutMe(
    title: 'Software Developer',
    description:
        'Passionate about creating intuitive and engaging user experiences. Specialize in transforming ideas into beautifully crafted products.',
    yearsOfExperience: '02',
    projectsCompleted: '10');
