import 'package:flutter/material.dart';

import 'customroute.dart';
import 'login.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10101c),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create an\naccount',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign up with',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final RenderBox button =
                            context.findRenderObject() as RenderBox;
                        final Offset buttonPosition =
                            button.localToGlobal(Offset.zero);
                        final Size buttonSize = button.size;

                        Navigator.of(context).push(
                          CustomRouteTransition(
                            page: const LoginScreen(),
                            beginOffset: Offset(
                              0,
                              (buttonPosition.dy + buttonSize.height / 2) /
                                      MediaQuery.of(context).size.height -
                                  1,
                            ),
                          ),
                        );
                      },
                      icon: Image.asset('assets/google.png', height: 24),
                      label: const Text('Google'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        fixedSize: const Size(100, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF282832),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/facebook.jpg',
                        height: 24,
                      ),
                      label: const Text('Facebook'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        fixedSize: const Size(100, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF282832),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'username',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // email
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      obscureText: _obscureText,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'xxxxxxx',
                        labelStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  fixedSize: const Size(200, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
