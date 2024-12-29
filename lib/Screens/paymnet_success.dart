import 'package:ecommerce/Screens/NavigationScreen.dart';
import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/success.png'),
              SizedBox(height: 20,),
              Text('Success',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Your order will be delivered soon' ,),
              Text('Thank You! for choosing DP shop')
            ],
          ),
          SizedBox(height: 200,),
         
         
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationScreen()));
            },
            child: ContainerButtonModel(itext: "Back to home page",
             bgColor: Color(0xFFEF6969),
             containerWith: MediaQuery.of(context).size.width/1.1,),
          )
        ],
      ),
    );
  }
}