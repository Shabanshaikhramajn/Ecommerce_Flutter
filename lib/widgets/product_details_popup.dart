import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {



final iStyle = TextStyle(color: Colors.black87,
  fontWeight: FontWeight.w600,
  fontSize: 18
);

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
        ),

        );},
        child: ContainerButtonModel(
          containerWith: MediaQuery.of(context).size.width/1.5,
          itext: "Buy Now",
          bgColor: Color(0xFFDB3022 ),
          
        ),

       );
  }
}