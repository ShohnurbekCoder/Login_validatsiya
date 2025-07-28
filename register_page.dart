import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final focusNode3 = FocusNode();
  final focusNode4 = FocusNode();

  bool obscureText = true;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();

    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();

    super.dispose();
  }

  void showText(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110),
            Text('Welcome to Nowtv',
                style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Create an account to explore amazing feature',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(height: 40),
            TextField(
              controller: controller1,
              focusNode: focusNode1,
              onTapOutside: (_) => focusNode1.unfocus(),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => showText(controller1.text),
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.account_circle),
                fillColor: Color(0xFF2C2C2C),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                constraints: BoxConstraints(maxWidth: 350),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25),
            TextField(
              controller: controller2,
              focusNode: focusNode2,
              onTapOutside: (_) => focusNode2.unfocus(),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => showText(controller2.text),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.email),
                fillColor: Color(0xFF2C2C2C),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                constraints: BoxConstraints(maxWidth: 350),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25),
            TextField(
              controller: controller3,
              focusNode: focusNode3,
              obscureText: obscureText,
              onTapOutside: (_) => focusNode3.unfocus(),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => showText(controller3.text),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
                fillColor: Color(0xFF2C2C2C),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                constraints: BoxConstraints(maxWidth: 350),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25),
            TextField(
              controller: controller4,
              focusNode: focusNode4,
              obscureText: obscureText,
              onTapOutside: (_) => focusNode4.unfocus(),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => showText(controller4.text),
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
                fillColor: Color(0xFF2C2C2C),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                constraints: BoxConstraints(maxWidth: 350),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF00A3B7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  showText('${controller1.text}, ${controller2.text}');
                  controller1.clear();
                  controller2.clear();
                  controller3.clear();
                  controller4.clear();
                },
                child: Text('Register', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text('Or register with', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialCircle('assets/google.png'),
                SizedBox(width: 30),
                socialCircle('assets/facebook.png'),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?", style: TextStyle(color: Colors.white, fontSize: 14)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginPage()),
                    );
                  },
                  child: Text('Login',
                      style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget socialCircle(String assetPath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        child: Center(child: Image.asset(assetPath, width: 30, height: 30)),
      ),
    );
  }
}