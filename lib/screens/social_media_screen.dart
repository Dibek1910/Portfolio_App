import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> socialMediaLinks = [
    {
      'name': 'GitHub',
      'url': 'https://github.com/Dibek1910',
      'icon': FontAwesomeIcons.github,
    },
    {
      'name': 'LinkedIn',
      'url': 'https://www.linkedin.com/in/dibek-todi/',
      'icon': FontAwesomeIcons.linkedin,
    },
    // Add more social media links as needed
  ];

  SocialMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media'),
      ),
      body: ListView.builder(
        itemCount: socialMediaLinks.length,
        itemBuilder: (context, index) {
          final link = socialMediaLinks[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: FaIcon(link['icon']),
              title: Text(link['name']),
              subtitle: Text(link['url']),
              onTap: () async {
                if (await canLaunch(link['url'])) {
                  await launch(link['url']);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
