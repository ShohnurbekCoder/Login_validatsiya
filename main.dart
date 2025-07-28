import 'package:flutter/material.dart';
import 'second_page.dart';
import 'three_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D2D2D),
      body: PageView(
        controller: controller,
        children: [
          Column(
            children: [
              Image.asset('assets/oyin.png', height: 363,width: 405 ,fit: BoxFit.cover),
              SizedBox(height: 40),
              Text(
                'Easy Streaming',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Choose your plan to watch live match your favourite club.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                margin:  EdgeInsets.symmetric(horizontal: 27),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  Color(0xFF00A3B7),
                ),
                child: TextButton(
                  onPressed: () {
                    controller.nextPage(
                        duration:Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  child:  Text('Next', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child:  Text('Skip', style: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 24),
            ],
          ),
          SecondPage(controller: controller),
          ThreePage(controller: controller),

        ],
      ),
    );
  }
}