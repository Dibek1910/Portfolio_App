class PortfolioData {
  final String name = 'Dibek Todi';
  final String email = 'kooldibek138a@gmail.com';
  final String title = 'Software Developer';
  final String aboutMe =
      'Hello! I am Dibek Todi, a passionate computer science engineer who loves to explore the endless possibilities of technology. Currently in my 2nd year of studies, I am deeply fascinated by the ever-evolving world of software development and its impact on our daily lives.\n\nAs I progress in my studies, I am eager to apply my knowledge and skills in real-world settings through internships or entry-level positions in software development. I am open to opportunities that allow me to contribute to cutting-edge projects, learn from experienced professionals, and make a meaningful impact.\n\nI am a passionate software developer with expertise in Flutter and web development. I love building beautiful and functional user interfaces.';
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
  final List<Education> education = [
    Education(
      degree: 'Bachelor of Technology in Computer Science & Engineering',
      university: 'Manipal University Jaipur',
      year: '2021 - Present',
      status: 'Ongoing',
    ),
    Education(
      degree: 'High Secondary(12th)',
      university: 'Radiant Junior College, Dergaon',
      year: '2019 - 2021',
      status: 'Completed',
    ),
    Education(
      degree: 'High School(10th)',
      university: 'Don Bosco High School, Dergaon',
      year: '2019',
      status: 'Completed',
    ),
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
      title: 'Portfolio App',
      description:
          'This is a Flutter application that showcases a portfolio. It includes information about the user, their education, skills, projects, and more.',
      languages: ['DART'],
      githubLink: 'https://github.com/Dibek1910/Portfolio_App.git',
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
