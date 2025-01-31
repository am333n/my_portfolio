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
    description:
        'Rebuilt apps to be faster, more efficient, and visually appealing. Led the mobile department single-handedly, launching three apps on the Play Store and App Store. Improved performance by 25%, worked with teams to design new features, and collaborated with beta testers to fine-tune the user experience. Ensured smooth updates and maintained high code quality.',
    position: 'Flutter Developer',
  ),
];
