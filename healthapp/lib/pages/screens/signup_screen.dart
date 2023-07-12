import 'package:flutter/material.dart';
import 'package:healthapp/pages/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passTogle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("images/doctor_login.jpg"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Your Name"),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Your Email"),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Phone Number"),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextField(
                obscureText: passTogle ? true : false,
                decoration: InputDecoration(
                    label: const Text("Enter Password"),
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    suffixIcon: InkWell(
                        onTap: () {
                          if (passTogle == true) {
                            passTogle = false;
                          } else {
                            passTogle = true;
                          }
                          setState(() {});
                        },
                        child: passTogle
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : const Icon(Icons.remove_red_eye_sharp))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                   color: const Color.fromARGB(255, 1, 45, 3),
                  onPressed: () => const LoginScreen(),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Text("Create Account",
                    style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have a Account "),
                TextButton(onPressed: () {}, child: const Text("Log In"))
              ],
            )
          ],
        )),
      ),
    );
  }
}
