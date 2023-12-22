// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(ThemeData.dark()),
      child: const PortfolioApp(),
    ),
  );
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  ThemeData getTheme() => _themeData;

  void toggleTheme() {
    _themeData = _themeData.brightness == Brightness.dark
        ? ThemeData.light()
        : ThemeData.dark();
    notifyListeners();
  }
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: Provider.of<ThemeNotifier>(context).getTheme(),
      home: HomePage(),
    );
  }
}

class Education {
  final String degree;
  final String university;
  final String year;
  final String status;

  Education({
    required this.degree,
    required this.university,
    required this.year,
    required this.status,
  });
}

class Project {
  final String title;
  final String description;
  final List<String> languages;
  final String githubLink;

  Project({
    required this.title,
    required this.description,
    required this.languages,
    required this.githubLink,
  });
}

class Certification {
  final String title;
  final String organization;
  final String date;

  Certification({
    required this.title,
    required this.organization,
    required this.date,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final String name = 'Dibek Todi';
  final String emailId = 'kooldibek138a@gmail.com';
  final String title = 'Software Developer';

  final String aboutMe =
      'Hello! I am Dibek Todi, a passionate computer science engineer who loves to explore the endless possibilities of technology. Currently in my 2nd year of studies, I am deeply fascinated by the ever-evolving world of software development and its impact on our daily lives.\n\n As I progress in my studies, I am eager to apply my knowledge and skills in real-world settings through internships or entry-level positions in software development. I am open to opportunities that allow me to contribute to cutting-edge projects, learn from experienced professionals, and make a meaningful impact.\n\nI am a passionate software developer with expertise in Flutter and web development. I love building beautiful and functional user interfaces.';

  final List<String> skills = [
    'Flutter',
    'Dart',
    'Java',
    'HTML',
    'CSS',
    'JavaScript',
    'C',
    'NodeJS',
    'ExpressJS',
    'MySQL',
    'MongoDB',
    'ReactJS',
  ];

  final List<Project> projects = [
    Project(
      title: 'Hotel Management System',
      description:
          'The "DIBEK HOTEL Management System" is a simple console-based application written in C. It allows users to perform various operations related to hotel management, such as booking a room, viewing customer records, deleting customer records, searching for customer records, and modifying customer details.',
      languages: ['C'],
      githubLink: 'https://github.com/Dibek1910/hotel-management.git',
    ),
    Project(
      title: 'ATM Machine',
      description:
          'This project is an implementation of an ATM (Automated Teller Machine) machine using Java programming language. The ATM machine simulates the basic functionalities of a real ATM, allowing users to perform various banking operations such as withdrawing cash, depositing cash, checking account balance, and changing the PIN.',
      languages: ['Java'],
      githubLink: 'https://github.com/Dibek1910/ATM-Machine.git',
    ),
    Project(
      title: 'Coffee shop frontend design',
      description:
          'This HTML file is a complete website template for a coffee shop. It includes sections such as the header, home, about, menu, review, book, and footer. The website has a modern design and uses popular libraries like Swiper for image sliders and Font Awesome for icons.',
      languages: ['HTML', 'CSS', 'JS'],
      githubLink:
          'https://github.com/Dibek1910/coffee-shop-frontend-design.git',
    ),
    Project(
      title: 'Employee Management System',
      description:
          'Employee Management System (EMS) is a Java-based console application that allows users to perform various operations related to employee management. It provides functionalities like adding employee details, viewing employee details, removing employees, updating employee information, and exiting the application.',
      languages: ['Java'],
      githubLink: 'https://github.com/Dibek1910/Employee-Management-System.git',
    ),
    Project(
      title: 'Employee Management System',
      description:
          'Employee Management System (EMS) is a Java-based console application that allows users to perform various operations related to employee management. It provides functionalities like adding employee details, viewing employee details, removing employees, updating employee information, and exiting the application.',
      languages: ['Java'],
      githubLink: 'https://github.com/Dibek1910/Employee-Management-System.git',
    ),
    Project(
      title: 'Portfolio App',
      description:
          'This is a Flutter application that showcases a portfolio. It includes information about the user, their education, skills, projects, and more.',
      languages: ['DART'],
      githubLink: 'https://github.com/Dibek1910/Portfolio_App.git',
    ),
  ];

  final List<Education> education = [
    Education(
        degree: 'Bachelor of Technology in Computer Science & Engineering',
        university: 'Manipal University Jaipur',
        year: '2021 - Present',
        status: 'Ongoing'),
    Education(
        degree: 'High Secondary(12th)',
        university: 'Radiant Junior College, Dergaon',
        year: '2019 - 2021',
        status: 'Completed'),
    Education(
      degree: 'High School(10th)',
      university: 'Don Bosco High School, Dergaon',
      year: '2019',
      status: 'Completed',
    ),
  ];

  final List<Certification> certifications = [
    Certification(
      title: 'Introduction to Java',
      organization: 'Coursera',
      date: '09/2022',
    ),
    Certification(
      title: 'Mastering Data Structures & Algorithms using C and C++',
      organization: 'Udemy',
      date: '11/2022',
    ),
    Certification(
      title: 'The Complete Flutter Development Bootcamp with Dart',
      organization: 'Udemy',
      date: '06/2023',
    ),
    Certification(
      title: 'The Complete 2023 Web Development Bootcamp',
      organization: 'Udemy',
      date: '07/2023',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              themeNotifier.toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Education'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EducationPage(education: education),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.code),
              title: const Text('Skills'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SkillsPage(skills: skills),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Certifications'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CertificationsPage(certifications: certifications),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProjectsPage(projects: projects),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Social Media'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SocialMediaPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FullImageScreen(),
                    ),
                  );
                },
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/1000154880.JPEG'),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  emailId,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                aboutMe,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SectionTitle(title: 'Education'),
            Column(
              children: education
                  .map(
                    (edu) => ListTile(
                      title: Text(edu.degree),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(edu.university),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SectionTitle(title: 'Skills'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    skills.map((skill) => Chip(label: Text(skill))).toList(),
              ),
            ),
            const SectionTitle(title: 'Projects'),
            Column(
              children: projects
                  .map((project) => ListTile(
                        title: Text(project.title),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class FullImageScreen extends StatelessWidget {
  const FullImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dibek'),
      ),
      body: Center(
        child: Image.asset('images/1000154880.JPEG'),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final email = _emailController.text;
      final message = _messageController.text;
      final phoneNumber = _phoneNumberController.text;

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Success'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: $name'),
              Text('Email: $email'),
              Text('Phone Number: $phoneNumber'),
              Text('Message: $message'),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Get in touch',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _messageController,
                decoration: const InputDecoration(
                  labelText: 'Message',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  final List<String> skills;

  const SkillsPage({Key? key, required this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(skills[index]),
          );
        },
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  final List<Project> projects;

  const ProjectsPage({Key? key, required this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ListTile(
            title: Text(
              project.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              _showProjectDetails(context, project);
            },
          );
        },
      ),
    );
  }

  void _showProjectDetails(BuildContext context, Project project) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(project.title),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Description: ${project.description}'),
            const SizedBox(height: 8.0),
            Text('Languages Used: ${project.languages.join(", ")}'),
            const SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                _launchURL(project.githubLink);
              },
              child: Text(
                'GitHub Repo: ${project.githubLink}',
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class SocialMediaPage extends StatelessWidget {
  final List<String> socialMediaLinks = [
    'https://github.com/Dibek1910',
    'https://www.linkedin.com/in/dibek-todi/',
  ];

  SocialMediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media'),
      ),
      body: ListView.builder(
        itemCount: socialMediaLinks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: _getIconForLink(socialMediaLinks[index]),
            title: Text('Link ${index + 1}'),
            subtitle: Text(socialMediaLinks[index]),
            onTap: () {
              _launchURL(socialMediaLinks[index]);
            },
          );
        },
      ),
    );
  }

  Icon _getIconForLink(String link) {
    if (link.contains('twitter')) {
      return const Icon(FontAwesomeIcons.twitter);
    } else if (link.contains('github')) {
      return const Icon(FontAwesomeIcons.github);
    } else if (link.contains('linkedin')) {
      return const Icon(FontAwesomeIcons.linkedin);
    } else {
      return const Icon(Icons.link);
    }
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Image.asset('images/1000154861.JPEG'),
              const SizedBox(height: 16),
              Text(
                HomePage().aboutMe,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  final List<Education> education;

  const EducationPage({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
      ),
      body: ListView.builder(
        itemCount: education.length,
        itemBuilder: (context, index) {
          final edu = education[index];
          return ListTile(
            title: Text(edu.degree),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(edu.university),
                Text(edu.year),
                Text(edu.status),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CertificationsPage extends StatelessWidget {
  final List<Certification> certifications;

  const CertificationsPage({super.key, required this.certifications});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certifications'),
      ),
      body: ListView.builder(
        itemCount: certifications.length,
        itemBuilder: (context, index) {
          final certification = certifications[index];
          return ListTile(
            title: Text(certification.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(certification.organization),
                Text(certification.date),
              ],
            ),
          );
        },
      ),
    );
  }
}
