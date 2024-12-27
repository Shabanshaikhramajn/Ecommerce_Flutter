import 'package:ecommerce/OTPScreen.dart';
import 'package:ecommerce/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

 bool clrButton  = false;

TextEditingController  emailController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: BackButton(),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),

          child: Column(
            children: [
              
                SizedBox(height: 10,)
,
              Text('Forgot Password',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,




              ),)


          ,SizedBox(height: 50,),

            Text("Please enter email address. you will receive a link to create or set a new password viewa email",
            style: TextStyle(
              fontSize: 15
            ), ),
            SizedBox(height: 20,),

            TextFormField(
              onChanged: (val){
                if(val != ""){
                  setState(() {
                    clrButton = true;
                  });
                }
                else{

                }
                
              },
              decoration: InputDecoration(
                labelText: "Enter your email",
                border: OutlineInputBorder( ),
                prefixIcon: Icon(Icons.email),
                suffix: InkWell(
                  onTap: (){
                    setState(() {
                      emailController.clear();
                      print(emailController);
                    });
                  },
                  child: Icon(CupertinoIcons.multiply, color: Colors.grey,))


              ),

            ),


          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RecoveryScreen()));
          }, child: Text('Send Email', style: TextStyle(color: Colors.white),),
          
          style:   ElevatedButton.styleFrom(
            
              minimumSize: Size.fromHeight(50),
              
              backgroundColor: Color(0xFFEf6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
          ),

          SizedBox(height: 10,),

              Text(('OR')),

              TextButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen()));

              }, 
              child: Text('Verify using number',style: 
              TextStyle(color: Color(0xFFEF6969),
              fontSize: 17),),)
            

            ],
          ),
          ),
        
      ),
    );
  }
}