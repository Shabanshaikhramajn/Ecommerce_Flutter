import 'package:ecommerce/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
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

            Text("Please Enter Details",
            style: TextStyle(
              fontSize: 15
            ), ),
            SizedBox(height: 20,),

            TextFormField(
              onChanged: (val){
                if(val != ""){
                  setState(() {
                    // clrButton = true;
                  });
                }
                else{

                }
                
              },
              decoration: InputDecoration(
                labelText: "Enter Recovery code",
                border: OutlineInputBorder( ),
                prefixIcon: Icon(Icons.numbers),
                suffix: InkWell(
                  onTap: (){
                    setState(() {
                      // emailController.clear();
                      // print(emailController);
                    });
                  },
                  child: Icon(CupertinoIcons.multiply, color: Colors.grey,))


              ),

            ),

            SizedBox(height: 20,),

            TextFormField(
              onChanged: (val){
                if(val != ""){
                  setState(() {
                    // clrButton = true;
                  });
                }
                else{

                }
                
              },
              decoration: InputDecoration(
                labelText: "Enter New Password",
                border: OutlineInputBorder( ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                suffix: InkWell(
                  onTap: (){
                    setState(() {
                      // emailController.clear();
                      // print(emailController);
                    });
                  },
                  child: Icon(CupertinoIcons.multiply, color: Colors.grey,))


              ),

            ),


SizedBox(height: 20,),

            TextFormField(
              onChanged: (val){
                if(val != ""){
                  setState(() {
                    // clrButton = true;
                  });
                }
                else{

                }
                
              },
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder( ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                suffix: InkWell(
                  onTap: (){
                    setState(() {
                      // emailController.clear();
                      // print(emailController);
                    });
                  },
                  child: Icon(CupertinoIcons.multiply, color: Colors.grey,))


              ),

            ),



          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
          }, child: Text('Sign In', style: TextStyle(color: Colors.white),),
          
          style:   ElevatedButton.styleFrom(
            
              minimumSize: Size.fromHeight(50),
              
              backgroundColor: Color(0xFFEf6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
          )
            

            ],
          ),
          ),
        
      ),

    );
  }
}