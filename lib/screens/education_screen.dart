import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class EducationScreen extends StatelessWidget {
  final PortfolioData data = PortfolioData();

  EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Education')),
      body: ListView.builder(
        itemCount: data.education.length,
        itemBuilder: (context, index) {
          final edu = data.education[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
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
          );
        },
      ),
    );
  }
}
