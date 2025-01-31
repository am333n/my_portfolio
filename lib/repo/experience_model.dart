class JobExperience {
  final String companyName;
  final String begin;
  final String end;
  final String? websiteUrl;
  final String description;
  final String position;

  // Constructor
  JobExperience({
    required this.companyName,
    required this.begin,
    required this.end,
    this.websiteUrl,
    required this.description,
    required this.position,
  });
}

List<JobExperience> myExperience = [
  JobExperience(
    companyName: 'Ceroen Software Solutions',
    begin: 'May 2023',
    end: 'Present',
    websiteUrl: 'https://ceroen.com/',
    description: 'Worked on the development of new software products.',
    position: 'Flutter Developer',
  ),
];
