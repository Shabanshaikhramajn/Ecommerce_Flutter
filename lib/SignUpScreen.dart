import 'package:ecommerce/SignUpScreen.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:100 ,),
          Image.asset('assets/freed.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(),
                   
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                 
                  obscureText: true,
                  
                  decoration: InputDecoration(
                    
                      labelText: "Enter Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                      
                ),

                  // Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: TextButton(onPressed: (){}, 
                  // child: Text('Forgot password',
                  // style: TextStyle(
                  //   color: Colors.blue,
                  // ),) ),
                  // ),

                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        backgroundColor: Color(0xFFEf6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                        child: Text("Let's shop",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Already have an account ",
                  style: TextStyle(),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                  },
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.all(0)),
                  child: Text(
                    'Log in ',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          )
        ],
      ))),
    );
  }
}
