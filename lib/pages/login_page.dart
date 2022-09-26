import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  // const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          minimumSize: const Size(120, 40)),
                      onPressed: () {
                        // ignore: avoid_print
                        // print("Hi, Flutter");
                        Navigator.pushNamed(context, "/home");
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
