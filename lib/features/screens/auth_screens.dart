import 'package:flutter/material.dart';
import 'package:needme/constants/global_variables.dart';

enum Auth {
  signin,
  singup,
}

class Authscreen extends StatefulWidget {
  static const String routName = 'auth/screen';
  const Authscreen({Key? key}) : super(key: key);

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  Auth _auth = Auth.singup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globalvariables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              ListTile(
                title: const Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: Globalvariables.secondaryColor,
                  value: Auth.singup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.singup)
              Form(
                key: _signUpFormKey,
                child: Column(

                ),
              ),
              ListTile(
                title: const Text(
                  'Sign-In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: Globalvariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
