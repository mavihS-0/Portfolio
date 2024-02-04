class Project{
  final String title;
  final String description;
  final String imagePath;
  final String githubLink;

  Project({ required this.title,  required this.description,  required this.imagePath,  required this.githubLink});
}

List<Project> projects =[
  Project(title: 'World Time', description: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/proj.png', githubLink: 'githubLink'),
  Project(title: 'World Time', description: 'lorep ipsum lorep ipsum lorep ipsum', imagePath:'assets/proj.png', githubLink: 'githubLink'),
  Project(title: 'World Time', description: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/proj.png', githubLink: 'githubLink'),
  Project(title: 'World Time', description: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/profile.png', githubLink: 'githubLink'),
  Project(title: 'World Time', description: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/profile.png', githubLink: 'githubLink'),
];