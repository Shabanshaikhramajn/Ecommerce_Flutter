import 'package:ecommerce/Screens/SignUpScreen.dart';
import 'package:ecommerce/Screens/home_screen.dart';
import 'package:ecommerce/Screens/login_screen.dart';
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
                    labelText: "Enter Name",
                    border: OutlineInputBorder(),
                   
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                 
                  obscureText: true,
                  
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    
                      labelText: "Enter Number",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.numbers),
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

                 SizedBox(
                  height: 15,
                ),
                TextFormField(
                 
                  obscureText: true,
                  
                  decoration: InputDecoration(
                    
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                      
                ),

              
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
                        child: Text("Create Account",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.all(0)),
                  child: Text(
                    'Log in ',
                    style: TextStyle(color: Color(0xFFEF6969), fontSize: 17, fontWeight: FontWeight.bold, ),
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
