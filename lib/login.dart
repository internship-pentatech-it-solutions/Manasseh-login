import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/google.png',
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Continue to Google',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Email or Phone',
                hintStyle: TextStyle(color: Colors.grey[600]),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Forget Account?',
              style: TextStyle(color: Colors.blue),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
