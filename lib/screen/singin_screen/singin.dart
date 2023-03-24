import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_system/utils/sharedpreferance.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.pinkAccent,
          title: Text("Sing UP",style: GoogleFonts.almarai(fontSize: 25,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    "Sing up",
                    style: GoogleFonts.arimo(
                        color: Colors.pinkAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: txtemail,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.pinkAccent,
                      ),
                      label: Text(
                        "EMAIL",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.pinkAccent,),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: txtpassword,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.pinkAccent,
                      ),
                      label: Text(
                        "PASSWORD",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Icon(Icons.title_sharp),

                  InkWell(
                    onTap: () {

                      var email=txtemail.text;
                      var password=txtpassword.text;
                      Shr shr =Shr();
                      shr.createdShr(email, password);
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      child: Text(
                        "Sing up",
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Don't have Account? Login in",style: GoogleFonts.lato(fontWeight: FontWeight.bold,),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
