import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final PageController controller;

  const SecondPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 405,
          height: 363,
          child: Image.asset('assets/page2.png', fit: BoxFit.cover),
        ),
        SizedBox(height: 40),
        Center(
          child: Text(
            'Always Uptodate',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Stay updated with match highlight, preview and hot news',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Spacer(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 27),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF00A3B7),
          ),
          child: TextButton(
            onPressed: () {
              controller.nextPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              );
            },
            child: Text('Next', style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text('Back', style: TextStyle(color: Colors.grey)),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
