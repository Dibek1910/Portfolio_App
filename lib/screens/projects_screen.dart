import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  final PortfolioData data = PortfolioData();

  ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView.builder(
        itemCount: data.projects.length,
        itemBuilder: (context, index) {
          final project = data.projects[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
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
                          Text('Languages: ${project.languages.join(", ")}'),
                          SizedBox(height: 8),
                          InkWell(
                            child: Text(
                              'GitHub: ${project.githubLink}',
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () async {
                              if (await canLaunch(project.githubLink)) {
                                await launch(project.githubLink);
                              }
                            },
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
          );
        },
      ),
    );
  }
}
