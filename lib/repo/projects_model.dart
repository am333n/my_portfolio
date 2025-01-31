class ProjectsModel {
  final String projectName;
  final String? projectCategory;
  final String? oraganisation;
  final String? projectDescription;
  final String? appStoreLink;
  final String? playStoreLink;
  final List<String>? tools;
  final String? roleDescription;

  ProjectsModel({
    required this.projectName,
    this.projectCategory,
    this.oraganisation,
    this.projectDescription,
    this.appStoreLink,
    this.playStoreLink,
    this.tools,
    this.roleDescription,
  });
}

List<ProjectsModel> myProjects = [
  ProjectsModel(
    projectName: "Workstair Jobhead",
    projectCategory: "Mobile Application",
    oraganisation: "Ceroen Software Solutions",
    projectDescription:
        "Workstair Jobhead is a mobile app for field management, enabling job heads and workers to access schedules, job sites, and customer details. Features include real-time location tracking, secure authentication, and offline mode for uninterrupted data access. It is built with Flutter and integrates Firebase for authentication and data synchronization.",
    appStoreLink:
        "https://apps.apple.com/us/app/workstair-jobhead/id6504078040", // Replace with actual App Store link
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.workstair.jobheadapp", // Replace with actual Play Store link
    tools: ["Flutter", "Cubit", "Firebase", "REST API"],
    roleDescription: "Solo Developer",
  ),
  ProjectsModel(
    projectName: "Docstair",
    projectCategory: "Mobile Application",
    oraganisation: "Ceroen Software Solutions",
    projectDescription:
        "Docstair is a mobile app that replicates the Docstair website's document management features. Users can upload documents, receive notifications, and interact with dynamic forms. Built using Flutter, it integrates Firebase for settings and notifications, offering a seamless experience with real-time updates.",
    appStoreLink: null,
    playStoreLink: null,
    tools: ["Flutter", "Cubit", "Firebase", "REST API"],
    roleDescription: "Solo Developer",
  ),
  ProjectsModel(
    projectName: "TeaTally",
    projectCategory: "Mobile Application",
    oraganisation: "Personal",
    projectDescription:
        "TeaTally is an app for tracking tea sessions with friends. Built with Firebase Firestore for real-time updates, it allows users to log tea activities and collaborate seamlessly. It also integrates Google Authentication for secure logins.",
    appStoreLink: null,
    playStoreLink: null,
    tools: ["Firebase Firestore", "Google Auth"],
    roleDescription: "Solo Developer",
  ),
];
