import 'package:ecommerce/Screens/paymnet_success.dart';
import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/material.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Confirm order'),
        centerTitle: true,
          backgroundColor: Colors.transparent,    
          foregroundColor: Colors.black,
          elevation: 0,
        ),

        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0,),
                  Text("shipping address", 
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Dear Pro,", 
                            style: TextStyle(
                              fontSize: 19
                            ),),

                            TextButton(onPressed: (){}, 
                            child: Text(
                              "change", 
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.blue,
                              ),
                            ),
                             ),
                            
                              
                          ],
                        ),
                         Text(
                            "3 Newbridge Court", 
                            style: TextStyle(fontSize: 16),
                             ),

                              Text(
                            " chino Hills, CA 97545, United States", 
                            style: TextStyle(fontSize: 16),
                             ),
                      ],
                    ),
                  ),


  SizedBox(height: 20,),
                   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(" Payment Method,", 
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),

                            TextButton(onPressed: (){}, 
                            child: Text(
                              "change", 
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.blue,
                              ),
                            ),
                             ),
                            
                              
                          ],
                        ),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )]
                    ),
                    child: Image.asset('assets/master card.png'),
                        ),
                        Text("       ***** ***** 3048", 
                        style: 
                        TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    ),

                    SizedBox(height: 20,),

                     Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(" Delivery Method,", 
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),

                            TextButton(onPressed: (){}, 
                            child: Text(
                              "change", 
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.blue,
                              ),
                            ),
                             ),
                            
                              
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )]
                    ),
                    child: Image.asset('assets/icon3.png',
                    height: 50, width: 50,),
                        ),
                        Text("   2-7 Days", 
                        style: 
                        TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    ),

                      SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sub- total",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),

             Text(
                "\$400.00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),

            ],
          ),
        
        SizedBox(height: 20,),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping fee",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),

             Text(
                "\$8.00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),

            ],
          ),
  SizedBox(height: 20,),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tax",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),

             Text(
                "\$32.00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),

            ],
          ),

          Divider(
            height: 30,
            thickness: 1,
            color: Colors.black,

          ),
          SizedBox(height: 20,),

              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),

             Text(
                "\$440.00",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),

            ],
          ),

                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentSuccess()));
                      },
                      child: ContainerButtonModel(
                        itext: 'Confirm Order',
                         containerWith: MediaQuery.of(context).size.width,
                         bgColor: Color(0xFFEF6969),
                         ),
                    )
                ],
              ))),
        ),
    );
  }
}