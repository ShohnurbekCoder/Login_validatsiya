import 'package:flutter/material.dart';
import 'login_page.dart';

class ThreePage extends StatelessWidget {
  final PageController controller;

  const ThreePage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2D2D),
      body: Column(
        children: [
          SizedBox(
            width: 405,
            height: 363,
            child: Image.asset('assets/messi.png', fit: BoxFit.cover),
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              'Get Amazing Reward',
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
                'Redeem your points to get an amazing reward',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginPage()),
                );
              },
              child:Text(
                'Let’s Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoginPage()),
              );
            },
            child: Text('Back', style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
