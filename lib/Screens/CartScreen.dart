import 'package:ecommerce/Screens/payment_method_screen.dart';
import 'package:ecommerce/widgets/container_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {




List imageList  = [
  'assets/image1.jpg',
  'assets/image2.jpg',
  'assets/image3.jpg',
  'assets/image4.jpg'
  
];

List productTitles  = [ 
  'Warm Zipper',
  'Knitted Woo',
  'Zipper Win',
  'Child Win'
];

List prices = [

"\$40",
"\$80",
"\$180",
"\$100",

];

List reviews = [
  "30",
  "91",
  "230",
  "204",

];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
   appBar: AppBar(
    title: Text("Cart"),
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
   ),


body: SingleChildScrollView(
  child: Padding(padding: EdgeInsets.all(20),
  child: Column(
    children: [
      Container(
       
    child:  ListView.builder(
      
      itemCount: imageList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Checkbox(value: true,
              activeColor: Color(0xFFEF6969),
               onChanged: (val){}),
               ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageList[index],
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
               ),
               Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productTitles[index],
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 19

                  ),
                  ),
                  SizedBox(height: 10,),
                  Text("Hoaded Jacket",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16
                  ),),
                  SizedBox(height: 10,),
                  Text(prices[index],
                  style: TextStyle(
                    color: Color(0xFFEF6969),
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),)

                ],
               ),
               Row(
                children: [
                  Icon(CupertinoIcons.minus, 
                  color: Colors.black,),
                  SizedBox(width: 20,),
                  Text( "1",
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold )),
                  SizedBox(width: 20,),
                  Icon(CupertinoIcons.plus,
                  color: Colors.black, )
                ],
               )

            ],
          ),
        );
      })
        ),
        SizedBox(height: 0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Select All",
            style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
            ),),
            Checkbox(
              splashRadius: 20,
              activeColor: Color(0xFFEF6969),
              value: true
              , onChanged: (val){})
          ],
        ),
        Divider(
          height: 20,
          thickness: 1,
          color: Colors.black,
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Payment",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
             Text("\$400",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentMethodScreen()));
          },
          child: ContainerButtonModel(itext: "Checkout",
            containerWith: MediaQuery.of(context).size.width,
            bgColor: Color(0xFFEF6969),

          
          ),
        ),
        SizedBox(height: 20,),

      
    ],
  ),
  )
),



    );
  }
}