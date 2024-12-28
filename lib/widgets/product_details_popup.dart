import 'package:ecommerce/Screens/CartScreen.dart';
import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {



final iStyle = TextStyle(color: Colors.black87,
  fontWeight: FontWeight.w600,
  fontSize: 18
);

List<Color>  clrs = [ 
  Colors.red,
  Colors.green,
  Colors.indigo,
  Colors.black
];


int num = 1;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          
          
          
          child: Padding(padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Size : ", style:  iStyle,),
                      SizedBox(height: 20,),
                      Text("Color : ", style:  iStyle,),
                      SizedBox(height: 20,),
                      Text("Total : ", style:  iStyle,),
                    ],
                  ),
                
                SizedBox(width: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("S", style: iStyle,),
                     
                      SizedBox(width:30,),
                      Text("M", style: iStyle,),
                      SizedBox(width:30,),
                      Text("L", style: iStyle,),
                      SizedBox(width:30,),
                      Text('XL', style:  iStyle),
                      SizedBox(width:30,),
                     
                      

                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      children: [
                        for(var i = 0; i<4; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 7),
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: clrs[i],
                            borderRadius: BorderRadius.circular(20)
                          ),
                        )

                        
                      ],
                    ),
                   
                   
                  ),

                   SizedBox( height:20 ),
                    Row(children: [
                      SizedBox(width: 10,),
                      Text('-', style: iStyle,),
                      SizedBox(width: 30,),
                      Text('$num', style: iStyle,),
                      SizedBox(width: 30,),
                      Text('+', style:  iStyle,)

                    ],)
              
              ],),
                ],
              ),
             SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Payment', style: iStyle,),
                Text("\$40.00", 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEF6969)
                ),)
              ],
             ),
             SizedBox(height: 40,),


             InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
              },
              child: ContainerButtonModel(
                
                containerWith: MediaQuery.of(context).size.width,
                bgColor: Color(0xFFEF6969),
                itext: "Order now"),
             )
            ],
          ),
          ),

        ),

        );},
        child: ContainerButtonModel(
          containerWith: MediaQuery.of(context).size.width/1.5,
          itext: "Buy Now",
          bgColor: Color.fromARGB(255, 236, 83, 83),
          
        ),

       );
  }
}