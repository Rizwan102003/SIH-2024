import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Making the sign page
class MySign extends StatefulWidget {
  const MySign({super.key});

  @override
  State<MySign> createState() => _MyLoginState();
}

class _MyLoginState extends State<MySign> {

  //sign up method
  void SignUp() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/loginsignup_bg.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top:130,left:85),
                child: Text(
                  'S I G N U P',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              //enable scrolling on screen
              SingleChildScrollView(
                child: Container(
                  //padding set to satisfy any screen size
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(
                    children: [
                      //Email bar and password bar
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,//insert the color
                            hintText: 'Email',
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),

                      //create space between the two textfiles
                      SizedBox(
                        height: 30,
                      ),


                      //Password Bar
                      TextField(
                        //to make the password hidden
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,//insert the color
                            hintText: 'Password',
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    SizedBox(
                      height: 20,
                    ),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, '/UserHomePage');
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shadowColor: Colors.blueAccent,
                            minimumSize: Size(20, 70),
                          ),
                          child: Text('SIGN UP',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ))

                    ],

                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
