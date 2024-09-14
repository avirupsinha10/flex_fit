import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Background color (You can replace this with an image or video)
              Container(
                color: Colors.black87,
              ),
              Positioned.fill(
                child: SingleChildScrollView( // Added SingleChildScrollView here
                  child: Column(
                    children: [
                      SizedBox(height: 50), // Adds space at the top
                      Image.asset(
                        'assets/fitt.png', // Replace with your image
                        height: 150,
                      ),
                      SizedBox(height: 40), // Space between the image and text
                      Text(
                        'Get fit, Don\'t Quit.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFD3E990),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40), // Adds space between the text and text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixText: '+91 ',
                            prefixStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.2),
                            hintText: 'Enter your mobile number',
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('CONTINUE'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 100.0),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'OR CONNECT WITH',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.email),
                            onPressed: () {},
                            color: Colors.blue,
                          ),
                          IconButton(
                            icon: Icon(Icons.g_mobiledata),
                            onPressed: () {},
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(height: 40), // Adjust space before the Terms text
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'By continuing you agree to the Terms of service and Privacy Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
