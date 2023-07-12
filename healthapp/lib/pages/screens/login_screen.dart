import 'package:flutter/material.dart';
import 'package:healthapp/pages/screens/home_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                padding: const EdgeInsets.all(20),
                child: Image.asset("images/doctor_login.jpg"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Enter user name"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: passTogle ? true : false,
                  decoration: InputDecoration(
                      label:const  Text("Enter Password"),
                      prefixIcon:const  Icon(Icons.lock),
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
                              ?const Icon(Icons.remove_red_eye_outlined)
                              :const  Icon(Icons.remove_red_eye_sharp))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) =>const  HomeScreen(),
                      // ));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    color: const Color.fromARGB(255, 1, 45, 3),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have any you Account?"),
                  TextButton(onPressed: (){}, child: Text("Create Account"))

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
