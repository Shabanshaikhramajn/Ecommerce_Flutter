import 'package:ecommerce/Screens/order_confirm_screen.dart';
import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (

          appBar: AppBar(
                title: Text('Add Shipping Address'),
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
          ),

          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(9)
                ,
                child:  Column(
                  children: [

                      SizedBox(height: 40,),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           
                        ),
                        labelText: 'Full Name'
                      ),
                    ),

                     SizedBox(height: 20,),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           
                        ),
                        labelText: 'Address'
                      ),
                    ),

                     SizedBox(height: 20,),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           
                        ),
                        labelText: 'city'
                      ),
                    ),

                     SizedBox(height: 20,),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           
                        ),
                        labelText: 'State/province'
                      ),
                    ),

                     SizedBox(height: 20,),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                           
                        ),
                        labelText: 'Zip code (Postal code)'
                      ),
                    ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderConfirmScreen()));
                    },

                    child: ContainerButtonModel(
                      itext: 'Add Address',
                      bgColor: Color(0xFFEF6969),
                    containerWith: MediaQuery.of(context).size.width,
                      ),
                  )

                  ],
                ),)
                )
                ),



    );
  }
}