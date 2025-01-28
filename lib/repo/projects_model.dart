class ProjectsModel {
  final String projectName;
  final String? projectCategory;
  final String? company;
  final String? duration;
  final String? titleImage;
  final String? projectDescription;
  final String? companyLink;
  final String? appStoreLink;
  final String? playStoreLink;
  final List<String>? tools;
  final List<ProjectMediaModel>? medias;

  final String? roleDescription;
  final int projectID;

  ProjectsModel({
    required this.projectName,
    this.projectCategory,
    this.company,
    this.duration,
    this.titleImage,
    this.projectDescription,
    this.companyLink,
    this.appStoreLink,
    this.playStoreLink,
    this.tools,
    this.medias,
    this.roleDescription,
    required this.projectID,
  });
}

class ProjectMediaModel {
  final String asset;
  final String description;

  ProjectMediaModel({required this.asset, required this.description});
}

List<ProjectsModel> myProjects = [
  ProjectsModel(
    projectName: "Flutter Weather App",
    projectCategory: "Mobile Application",
    company: "Tech Innovations",
    duration: "3 months",
    titleImage: "assets/images/weather_app.png",
    projectDescription:
        "A mobile application that provides weather forecasts using real-time data.",
    companyLink: "https://www.techinnovations.com",
    appStoreLink: "https://apps.apple.com/app/id1234567890",
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.techinnovations.weatherapp",
    tools: ["Flutter", "Dart", "API Integration"],
    medias: [
      ProjectMediaModel(
          asset: "assets/media/weather_app_screenshot1.png",
          description: "Home Screen"),
      ProjectMediaModel(
          asset: "assets/media/weather_app_screenshot2.png",
          description: "Forecast Screen"),
    ],
    roleDescription:
        "Lead Developer responsible for app architecture and API integration.",
    projectID: 1,
  ),
  ProjectsModel(
    projectName: "E-Commerce Platform",
    projectCategory: "Web Application",
    company: "E-Com Solutions",
    duration: "6 months",
    titleImage: "assets/images/ecommerce_platform.png",
    projectDescription:
        "A web-based e-commerce platform with a user-friendly interface and secure payment integration.",
    companyLink: "https://www.ecomsolutions.com",
    appStoreLink: null,
    playStoreLink: null,
    tools: ["React", "Node.js", "MongoDB"],
    medias: [
      ProjectMediaModel(
          asset: "assets/media/ecommerce_platform_home.png",
          description: "Homepage"),
      ProjectMediaModel(
          asset: "assets/media/ecommerce_platform_cart.png",
          description: "Shopping Cart"),
    ],
    roleDescription:
        "Full-Stack Developer focusing on frontend and backend development.",
    projectID: 2,
  ),
  ProjectsModel(
    projectName: "Task Management App",
    projectCategory: "Mobile Application",
    company: "Productive Tech",
    duration: "4 months",
    titleImage: "assets/images/task_management_app.png",
    projectDescription:
        "An app for managing tasks and projects with features for scheduling and notifications.",
    companyLink: "https://www.productivetech.com",
    appStoreLink: "https://apps.apple.com/app/id0987654321",
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.productivetech.taskmanager",
    tools: ["Flutter", "Firebase", "Provider"],
    medias: [
      ProjectMediaModel(
          asset: "assets/media/task_management_app_dashboard.png",
          description: "Dashboard"),
      ProjectMediaModel(
          asset: "assets/media/task_management_app_settings.png",
          description: "Settings"),
    ],
    roleDescription:
        "Mobile Developer with a focus on UI/UX and state management.",
    projectID: 3,
  ),
  ProjectsModel(
    projectName: "Fitness Tracker",
    projectCategory: "Wearable Application",
    company: "HealthTech",
    duration: "5 months",
    titleImage: "assets/images/fitness_tracker.png",
    projectDescription:
        "A wearable app that tracks fitness activities, provides workout plans, and monitors progress.",
    companyLink: "https://www.healthtech.com",
    appStoreLink: "https://apps.apple.com/app/id1122334455",
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.healthtech.fitnesstracker",
    tools: ["Flutter", "Dart", "GPS"],
    medias: [
      ProjectMediaModel(
          asset: "assets/media/fitness_tracker_home.png",
          description: "Main Dashboard"),
      ProjectMediaModel(
          asset: "assets/media/fitness_tracker_stats.png",
          description: "Activity Statistics"),
    ],
    roleDescription:
        "Software Engineer specializing in wearable tech and data visualization.",
    projectID: 4,
  ),
];
