import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 50,
                  // ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Image(
                            height: 50,
                            width: 50,
                            image: AssetImage('images/logo.png')),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Game',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Rubik Medium',
                                color: Color(0xff203142)),
                          ),
                          Text(
                            'Over',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Rubik Regular',
                                color: Color(0xfff97038)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xff203142)))),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Text('First login UI with Flutter',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik Regular',
                                color: Color(0xff4c5980))),
                      )),
                  
                  // SizedBox(
                  //   height: 50,
                  // ),
                  
                  //Email input 
                    Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: TextFormField(
                      decoration:  InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(fontFamily: 'Rubik Medium'),
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: Icon(Icons.email,color: Color(0xff323f4b),), 
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7Eb)),
                        borderRadius: BorderRadius.circular(100), 
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7Eb)),
                        borderRadius: BorderRadius.circular(100), 
                        )
                                        
                      ),
                                        
                                        ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  
                   //Password input 
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
                      obscureText: true,
                      decoration:  InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontFamily: 'Rubik Medium'),
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: Icon(Icons.lock,color: Color(0xff323f4b),), 
                        suffix: Icon(Icons.visibility_off),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7Eb)),
                        borderRadius: BorderRadius.circular(100), 
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7Eb)),
                        borderRadius: BorderRadius.circular(100), 
                        
                        )
                      ),
                    
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                
                  //forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(
                          'Forgot Password',
                          style:TextStyle
                          (decoration: 
                          TextDecoration.underline,fontFamily: 'Rubik Medium',fontSize: 14),
                        ),
                      ),
                    ],
                  ),
              
                  // SizedBox(
                  //   height: 200,
                  // ),
                  //Login Button 
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xfff97038),
                            borderRadius: BorderRadius.circular(10)),
                    
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Rubik Regular',
                                color: Colors.white),
                          ),
                        )),
                  ),
                    SizedBox(
                      height: 15,
                    ),
                 
                 
                 
                  //Don't have an account
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Don't have and account? ",),
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik Regular',
                              color: Colors.black)),
                      Text.rich(
                      TextSpan(
                      text: "Sign up",),
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xfff9730b))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
