import 'package:flutter/material.dart';
import 'register_page.dart';

void main() => runApp(MaterialApp(home: LoginPage()));

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  bool obscureText = true;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }

  void showText(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back,',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Please login to enjoy full feature',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              SizedBox(height: 30),
              TextField(
                controller: controller1,
                focusNode: focusNode1,
                onTapOutside: (_) => focusNode1.unfocus(),
                onChanged: (_) => setState(() {}),
                onSubmitted: (_) => showText(controller1.text),
                decoration: InputDecoration(
                  hintText: 'Username or Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.account_circle),
                  fillColor: Color(0xFF2C2C2C),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
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
                obscureText: obscureText,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.key_sharp),
                  suffixIcon: IconButton(
                    icon: Icon(obscureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      obscureText = !obscureText;
                      setState(() {});
                    },
                  ),
                  fillColor: Color(0xFF2C2C2C),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  constraints: BoxConstraints(maxWidth: 350),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF00A3B7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    showText('${controller1.text}, ${controller2.text}');
                    controller1.text = '';
                    controller2.text = '';
                  },
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text('Or Login with',
                    style: TextStyle(color: Colors.white)),
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
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style: TextStyle(color: Colors.white)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => RegisterPage()));
                          },
                          child: Text('Register now',
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        child: Center(child: Image.asset(assetPath, width: 30, height: 30)),
      ),
    );
  }
}