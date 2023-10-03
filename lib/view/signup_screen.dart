import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final _formfield = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sign Up',
            style: GoogleFonts.poppins(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFBBEC),
                Color(0xFFA9C9FF),
              ],
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFBBEC),
                Color(0xFFA9C9FF),
              ],
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 330,
                child: Lottie.asset(
                  'images/Animation3.json',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formfield,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: GoogleFonts.poppins(),
                          errorStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.mail)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Email cant be empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(),
                          errorStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.password)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Password cant be empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Already have an account Login',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formfield.currentState!.validate()) {}
                },
                child: Container(
                  height: 60,
                  width: 200,
                  child: Center(
                    child: Text('Sign Up',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFC00FF),
                        Color(0xFF00DBDE),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
