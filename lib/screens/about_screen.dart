import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class AboutScreen extends StatelessWidget {
  final PortfolioData data = PortfolioData();

  AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 16),
              Text(
                data.aboutMe,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 24),
              Image.asset('images/1000154861.JPEG'),
            ],
          ),
        ),
      ),
    );
  }
}
