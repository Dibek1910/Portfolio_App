import 'package:flutter/material.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class CertificationsScreen extends StatelessWidget {
  final PortfolioData data = PortfolioData();

  CertificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certifications'),
      ),
      body: ListView.builder(
        itemCount: data.certifications.length,
        itemBuilder: (context, index) {
          final cert = data.certifications[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(cert.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cert.organization),
                  Text(cert.date),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
