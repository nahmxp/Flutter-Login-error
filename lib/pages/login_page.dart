import 'package:authentication_app/components/my_textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Center(
            child: Column(
              children: const[
                //const SizedBox(height: 50),

                //logo
                const Icon(
                Icons.lock,
                size: 100,
                ),
                //const SizedBox(height: 50),
                Text(
                  "Wellcome back, you've been missed!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),

                ),
                    //Welcome back,you've been missed
                //const SizedBox(height: 25),
                    //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                //const SizedBox(height: 15),
                    //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                    //forgotpassword

                    //sign in button

                    //or continue with

                    //google + apple sign in button

              ]
            )
          ),
      ),

    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('PasswordController', passwordController));
  }
}

// https://youtu.be/Dh-cTQJgM-Q?si=HRWqMT0pPKPLsdnJ