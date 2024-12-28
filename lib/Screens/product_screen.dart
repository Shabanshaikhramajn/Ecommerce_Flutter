import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {


List<String> images = [
  'assets/image1.jpg',
  'assets/image2.jpg',
  'assets/image3.jpg',
  'assets/image4.jpg',
];
  return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Padding(padding: EdgeInsets.all(20)
        ,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of( context).size.width,
                  child: FanCarouselImageSlider.sliderType2(
                    imagesLink: images, 
                    isAssets: true,
                      autoPlay: true,
                      sliderHeight: 430,
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                      ),
                      Text("warm Zipper", 
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        ) 
                        
                        ,),
                        SizedBox(height: 5,),
                        Text(
                          "Hoodie Jacket",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,

                          ),
                        )

                      ],
                    ),
                    Text(
                      "\$300.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFFEF6969)
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),


                 Align(
                  alignment: Alignment.topLeft,
                   child: RatingBar.builder(
                    initialRating: 4.5,
                   minRating: 1,
                   itemSize: 30,
                       direction: Axis.horizontal,
                     allowHalfRating: true,
                     itemCount: 5,
                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) => Icon(
                                   Icons.star,
                        color: Colors.amber,
                   
                                   ),
                                onRatingUpdate: (rating) {
                              
                                },
                                ),
                 ),
             SizedBox(height: 10,),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                        "Cool, windy weather is on its way. send him out\n the door in  a jacket he wants to wear. Warm \n oppr hooded jacket",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
              ),
                 SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xF989797),
                            borderRadius: BorderRadius.circular(
                              30
                            ),
                            
                          ),
                          child: Center(
                            child: Icon(Icons.shopping_cart,
                            color: Color(0xFFEF6969),),
                          ),
                        )
                      ],
                    )
             
              ],
        ),
        )
        ),
      ),

    );
  }
}