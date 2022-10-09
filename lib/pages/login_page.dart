import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formKey = GlobalKey<FormState>();
moveToHome(BuildContext context) async {
  // print("Login button pressed");
  setState(
    () {
      buttonPressed = true;
    },
  );
  await Future.delayed(const Duration(seconds: 1));
  // ignore: use_build_context_synchronously
  await Navigator.pushNamed(context, MyRoutes.homeRoute);
  setState(() {
    buttonPressed = false;
  });
}

class _LoginPageState extends State<LoginPage> {
  // const loginPage({super.key});
  String name = "";
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
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
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Material(
                        //  decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(buttonPressed ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: buttonPressed ? 50 : 150,
                            height: 40,
                            alignment: Alignment.center,
                            // ignore: sort_child_properties_last
                            child: buttonPressed
                                ? const Icon(Icons.done, color: Colors.white)
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   // shape: buttonPressed
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(buttonPressed ? 50 : 8),
                            // ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   style: TextButton.styleFrom(
                      //       minimumSize: const Size(120, 40)),
                      //   onPressed: () {
                      //     // ignore: avoid_print
                      //     // print("Hi, Flutter");
                      //     Navigator.pushNamed(context, "/home");
                      //   },
                      //   child: const Text("Login"),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
