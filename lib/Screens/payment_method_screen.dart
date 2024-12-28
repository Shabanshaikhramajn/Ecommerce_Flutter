import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  
  
  int _type = 1;
  void _handleRadio (Object ? e) => setState((){
    _type  = e as int;
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return  Scaffold(

      appBar: AppBar(
    title: Text("Payment"),
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
   ),
body: SafeArea(
  
  child: Padding(padding: EdgeInsets.all(20),
    child: Center(
      child: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            width: size.width,
            height: 55,
            decoration: BoxDecoration(
              border: _type == 1 ? Border.all(width: 1, color: Colors.black): 
              Border.all(width: 0.3 , color: Colors.grey),
              borderRadius: BorderRadius.circular(5),

            ),
          )
        ],
      ),
    ),
  )),

    );
  }
}