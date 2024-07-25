import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(146, 232, 235, 237),
      body: Container(
        height: MediaQuery.of(context)
            .size
            .height,
            padding: EdgeInsets.only(top: 75), // If you get any blur that is outoff the screen then try to decrease or increase this negative value.This is mainly bcz it adjusts as per the phone size.
        alignment: Alignment.topCenter,
        child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  child: Column(
                    children: [
                      Stack(
                        //I added stack so that i can position it anywhere i want with the coordinates like left ,right,bottom.
                        children: <Widget>[
                          Positioned(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                              'https://images.unsplash.com/photo-1719937206168-f4c829152b91?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8',
                              ),
                            ),
                          ),
                        ],
                      ),
      
                      //The Username,Email,Password Input fields.
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffe1e2e3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: const BoxDecoration(
                                  color: Color(0xfff5f8fd),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Username",
                                    border: InputBorder.none),
                              ),
                            ),
                      const SizedBox(height: 40),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: const BoxDecoration(
                                  color: Color(0xfff5f8fd),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Email",
                                    border: InputBorder.none),
                              ),
                            ),
                      const SizedBox(height: 40),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: const BoxDecoration(
                                  color: Color(0xfff5f8fd),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height:60),
                //Raised Buttons of sigup will appear.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 13,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 55),
                        backgroundColor:
                            Colors.deepPurpleAccent, // background color
                        foregroundColor: Colors.white, // text color
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: () {
                        // Your onPressed code here
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width:15),
                    
                  ],
                ),
                const SizedBox(height: 25),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {Navigator.pop(context);},
                    child: const Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.deepPurpleAccent,
                            fontSize: 18)),
                  )
                ]),
              ],
            )),
      ),
    );
  }
}
