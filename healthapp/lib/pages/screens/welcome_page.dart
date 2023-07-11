import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:healthapp/pages/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "SKIP",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("images/doctor_login.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Doctors Here",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Appoint Your Doctor ",
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2),
            ),
          const   SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                } ,
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Log In",style: 
                  TextStyle(color: Colors.white,fontSize: 20),),
                ),
                color: Color.fromARGB(255, 1, 45, 3),
                ),
                MaterialButton(onPressed: (){} ,
              child:Padding(
                  padding: EdgeInsets.all(8.0),
                  child:   Text("Sing Up",style: 
                  TextStyle(color: Colors.white,fontSize: 20),),
                ),
                color: Color.fromARGB(255, 1, 45, 3),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
