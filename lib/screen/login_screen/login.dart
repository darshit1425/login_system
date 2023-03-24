import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_system/utils/sharedpreferance.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
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
          title: Text(
            "login",
            style:
                GoogleFonts.almarai(fontSize: 25, fontWeight: FontWeight.bold),
          ),
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
                    "Login ",
                    style: GoogleFonts.arimo(
                        color: Colors.pinkAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: txtpassword,
                    decoration: InputDecoration(
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
                    height: 25,
                  ),
                  // Icon(Icons.title_sharp),

                  InkWell(
                    onTap: () async{
                      String userEmail = txtemail.text;
                      String userpassword = txtpassword.text;

                      Shr shr = Shr();
                      Map m1 = await shr.readShr();
                      if (userEmail == m1['e1'] && userpassword == m1['p1']) {
                        Navigator.pushNamed(context, "Home");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalied Id or Password"),
                          ),
                        );
                      }

                      // Navigator.pushNamed(context, "Home");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: 180,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signUp');
                    },
                    child: Text(
                      "Don't have Account? Sign Up",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // SizedBox(height: 50),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Don't have Account?",
                  //       style: TextStyle(fontSize: 15),
                  //     ),
                  //
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
