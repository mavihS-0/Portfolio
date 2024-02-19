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
  Project(title: 'Communiti', subTitle: 'GDSC SOLUTIONS CHALLENGE', imagePath:'assets/projects/communiti.png', githubLink: 'github.com/mavihS-0/Communiti',
  description: 'Communiti is a mobile application that allows NGOs (non-governmental organizations) to post volunteer opportunities and volunteers to find and sign up for those opportunities. The app helps to bridge the gap between NGOs in need of volunteers and individuals who want to give back to their community.'),
  Project(title: 'Currents', subTitle: 'NEWS APP WITH BLoC', imagePath: 'assets/projects/currents.png', githubLink: 'github.com/mavihS-0/Currents-with-BLoC',
  description: 'Elevate your news experience with our enhanced Flutter News App, now driven by Bloc for robust state management. Effortlessly navigate through a dynamic feed screen, swiping through curated articles. The revamped home screen offers a refined search bar and a country filter, empowering users to tailor their news exploration.'),
  Project(title: 'Pix-Q', subTitle: 'WALLPAPER APP', imagePath: 'assets/projects/pixq.png', githubLink: 'github.com/mavihS-0/Pix-Q',
  description: 'Pix-Q: A wallpaper app built using flutter, firebase and wallhaven api. This app gets wallpapers from wallhaven.com based on search queries and stores liked wallpapers in a database on cloud firestore.'),
];