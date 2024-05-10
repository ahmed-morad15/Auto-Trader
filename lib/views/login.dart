import 'package:car_trader/views/Home_View.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'Login view';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
              fontSize: 18, // Change font color
          ),
        ),
        centerTitle: true, // Center title
        backgroundColor: Colors.grey[200], // Specify background color
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200], // Background color
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 16),
              Image.asset(
                'assets/images/WWW.FONXAT.COM audi_texture1735.png',
                height: 250,
                width: double.infinity,
                //fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder( // Make borders visible
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey), // Specify border color
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an email';
                          }
                          return null;
                        },
                        onChanged: (value) => _email = value,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder( // Make borders visible
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey), // Specify border color
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        onChanged: (value) => _password = value,
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Show password reset screen
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.blue, // Change font color
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, HomeView.id);
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white, // Change font color
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Button color
                            shape: RoundedRectangleBorder( // Make button borders visible
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.white), // Specify border color
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          TextButton(
                            onPressed: () {
                              // Show sign up screen
                            },
                            child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.blue, // Change font color
                            ),
                            ),
                          ),
                        ],
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

