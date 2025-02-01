import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_app/providers/theme_provider.dart';
import 'package:portfolio_app/widgets/custom_drawer.dart';
import 'package:portfolio_app/widgets/profile_header.dart';
import 'package:portfolio_app/widgets/section_list.dart';
import 'package:portfolio_app/models/portfolio_data.dart';

class HomeScreen extends StatelessWidget {
  final PortfolioData portfolioData = PortfolioData();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(data: portfolioData),
            SectionList(data: portfolioData),
          ],
        ),
      ),
    );
  }
}
