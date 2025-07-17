import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/full_image_screen.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class ProfileHeader extends StatelessWidget {
  final PortfolioData data;

  const ProfileHeader({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FullImageScreen()),
              );
            },
            child: Hero(
              tag: 'profile_image',
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/1000154880.JPEG'),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            data.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(data.email, style: TextStyle(fontSize: 18)),
          SizedBox(height: 8),
          Text(data.title, style: TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }
}
