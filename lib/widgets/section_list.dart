import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class SectionList extends StatelessWidget {
  final PortfolioData data;

  const SectionList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'About Me'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(data.aboutMe, style: TextStyle(fontSize: 16)),
        ),
        SectionTitle(title: 'Skills'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: data.skills
                .map((skill) => Chip(label: Text(skill)))
                .toList(),
          ),
        ),
        SectionTitle(title: 'Education'),
        Column(
          children: data.education
              .map(
                (edu) => ListTile(
                  title: Text(edu.degree),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(edu.university),
                      Text(edu.year),
                      Text(edu.status),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
        SectionTitle(title: 'Projects'),
        Column(
          children: data.projects
              .map(
                (project) => ListTile(
                  title: Text(project.title),
                  subtitle: Text(project.languages.join(', ')),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(project.title),
                        content: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Description: ${project.description}'),
                              SizedBox(height: 8),
                              Text(
                                'Languages: ${project.languages.join(", ")}',
                              ),
                              SizedBox(height: 8),
                              InkWell(
                                child: Text(
                                  'GitHub: ${project.githubLink}',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ],
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
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
