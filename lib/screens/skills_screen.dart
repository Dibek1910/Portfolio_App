import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class SkillsScreen extends StatelessWidget {
  final PortfolioData data = PortfolioData();

  SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skills')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: data.skills
              .map(
                (skill) => Chip(
                  label: Text(skill),
                  backgroundColor: Theme.of(
                    context,
                  ).primaryColor.withOpacity(0.1),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
