import 'package:ecommerce/recovery_screen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("OTP Verfification", 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter number",
                  border: OutlineInputBorder(),
                  
                ),
                keyboardType: TextInputType.number,
                maxLength: 10,

              ),
              SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecoveryScreen()));

                    }, 
                    child: 
                    Text('Send OTP', style: TextStyle(fontSize: 18,color: Colors.white ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(55),
                      backgroundColor: Color(0xFFEF6969),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        
                      )
                    ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
