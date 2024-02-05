class Project{
  final String title;
  final String subTitle;
  final String imagePath;
  final String githubLink;
  final String description;

  Project({ required this.title,  required this.subTitle,  required this.imagePath,  required this.githubLink, required this.description});
}

List<Project> projects =[
  Project(title: 'Fire App', subTitle: 'CUSTOM SOCIAL MEDIA/CHAT APP', imagePath: 'assets/projects/project1.png', githubLink: 'github.com/mavihS-0/FireApp'
  , description: 'FireApp is a comprehensive chatting application (prototype) developed during an internship at Ajani Infotech. It\'s designed to offer a seamless communication experience with a range of essential features that define a modern chat application.'),
  Project(title: 'World Time', subTitle: 'lorep ipsum lorep ipsum lorep ipsum', imagePath:'assets/proj.png', githubLink: 'githubLink',
  description: 'World Time is a flutter application that shows the time of different locations. It uses an API to get the time of different locations. It also has a feature to change the location and see the time of that location.'),
  Project(title: 'World Time', subTitle: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/proj.png', githubLink: 'githubLink',
  description: 'World Time is a flutter application that shows the time of different locations. It uses an API to get the time of different locations. It also has a feature to change the location and see the time of that location.'),
  Project(title: 'World Time', subTitle: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/profile.png', githubLink: 'githubLink',
  description: 'World Time is a flutter application that shows the time of different locations. It uses an API to get the time of different locations. It also has a feature to change the location and see the time of that location.'),
  Project(title: 'World Time', subTitle: 'lorep ipsum lorep ipsum lorep ipsum', imagePath: 'assets/profile.png', githubLink: 'githubLink',
  description: 'World Time is a flutter application that shows the time of different locations. It uses an API to get the time of different locations. It also has a feature to change the location and see the time of that location.'),
];