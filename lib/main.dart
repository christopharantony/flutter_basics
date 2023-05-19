import 'package:counter_application/glassmorphism.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool psdShow = false;
  bool isSubmit = false;
  Map user = {'username': '', 'password': ''};
  final _usernameController = TextEditingController();
  final _psdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 110, 84),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Enter your username"),
                  style: const TextStyle(
                      letterSpacing: 5,
                      fontFamily: "Roboto",
                      color: Color.fromARGB(255, 112, 1, 1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _psdController,
                  obscureText: !psdShow,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Enter your password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              psdShow = !psdShow;
                            });
                          },
                          icon: psdShow
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                  style: const TextStyle(
                      letterSpacing: 5,
                      fontFamily: "Roboto",
                      color: Color.fromARGB(255, 112, 1, 1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSubmit = true;
                      });
                    },
                    style: const ButtonStyle(),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        letterSpacing: 5,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSubmit = false;
                        psdShow = false;
                        _usernameController.clear();
                        _psdController.clear();
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 49, 49)),
                    ),
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        letterSpacing: 5,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                isSubmit
                    ? GlassMorphism(
                        start: 0.9,
                        end: 0.6,
                        child: Column(children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Center(
                              child: Text(
                                  "Welcome to our Family,\nName: ${_usernameController.text}\n${psdShow ? "Password: ${_psdController.text}" : "Password: ********"}"),
                            ),
                          ),
                        ]),
                      )
                    : Container()
              ],
            )),
      ),
    );
  }
}
