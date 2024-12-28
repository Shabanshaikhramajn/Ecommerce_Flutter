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
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: _type == 1 ? Border.all(width: 1, color: Colors.black): 
              Border.all(width: 0.3 , color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(value: 1, groupValue: _type, activeColor: Color(0xFFEF6969),
                  onChanged: (val){},
                   ),
                   Text('Amazon Pay',
                   style: _type ==1 ?
                   TextStyle(fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black)
                   :
                   TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                   ),

                   
                   
                   ),
                   
                   Image.asset(
                    'assets/amazon.png', 
                    width: 100,
                    height: 100,
                   )
                   
                ],
              ),
            ),
          ),
  SizedBox(height: 20,),
          Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: _type == 0 ? Border.all(width: 1, color: Colors.black): 
              Border.all(width: 0.3 , color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(value: 1, groupValue: _type, activeColor: Color(0xFFEF6969),
                  onChanged: (val){},
                   ),
                   Text('PayPal',
                   style: _type ==1 ?
                   TextStyle(fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black)
                   :
                   TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                   ),

                   
                   
                   ),
                   
                   Image.asset(
                    'assets/paypal.png', 
                    width: 100,
                    height: 100,
                   )
                   
                ],
              ),
            ),
          )
      ,  SizedBox(height: 20,),
         
         Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: _type == 0 ? Border.all(width: 1, color: Colors.black): 
              Border.all(width: 0.3 , color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(value: 1, groupValue: _type, activeColor: Color(0xFFEF6969),
                  onChanged: (val){},
                   ),
                   Text('Master card',
                   style: _type ==1 ?
                   TextStyle(fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black)
                   :
                   TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                   ),

                   
                   
                   ),
                   
                   Image.asset(
                    'assets/master card.png', 
                    width: 40,
                    height: 40,
                   )
                   
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),

           Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: _type == 0 ? Border.all(width: 1, color: Colors.black): 
              Border.all(width: 0.3 , color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(value: 0, groupValue: _type, activeColor: Color(0xFFEF6969),
                  onChanged: (val){},
                   ),
                   Text('Google Pay',
                   style: _type ==1 ?
                   TextStyle(fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black)
                   :
                   TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                   ),

                   
                   
                   ),
                   
                   Image.asset(
                    'assets/google.jpg', 
                    width: 100,
                    height: 100,
                   )
                   
                ],
              ),
            ),
          )
        
        ],
      ),
    ),
  )),

    );
  }
}



// 2.21