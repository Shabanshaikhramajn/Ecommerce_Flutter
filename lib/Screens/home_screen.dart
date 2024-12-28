import 'package:ecommerce/Screens/onboarding_screen.dart';
import 'package:ecommerce/Screens/product_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> categories = ['ALL', 'Category', 'Recommended','top', 'price', 'latest'];

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
    return Scaffold(
    
    
      body:SafeArea(child: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 20),
      
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: MediaQuery.of(context).size.width/ 1.4,
                  
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.05),
                  
                  borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                    BoxShadow(
                    color: Colors.black12.withOpacity(.05),
                    // blurRadius: 4,
                    // spreadRadius: 2
        
                  
                  )
                  ]
                  
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFEF6969),
        
                      ),
                      border: InputBorder.none,
                      label: Text('Find your product',
                      style: TextStyle(fontSize: 17),),
                      
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/6,
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(.05),
                    borderRadius: BorderRadius.circular(10),
        
                    
                  ),
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                )
              ],
        
              
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(15, 255, 94, 0),
                borderRadius: BorderRadius.circular(20),
            
        
        
            
              ),
              child: Image.asset('assets/freed.png'),
        
            ),
        
            SizedBox(height: 9,),
        
            SizedBox(height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection:Axis.horizontal,
              itemCount: categories.length,
        
        
              
              
              itemBuilder:(context, index) {
                return FittedBox(
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20)
        
                    ),
                    child: 
                    Center(
                      child: FittedBox(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              } ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  
                  color: Colors.white,
                  height: 190,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return Container(
                        height: 50,
                      color: Colors.transparent,
                      margin: EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
        
                        children: [
                          SizedBox(
                            height: 180,
                            child: Stack(
                              children: [InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                 child: Image.asset(imageList[index],
                                 fit: BoxFit.cover,
                                 width: 180, height: 180,),
                                 
                                ),
                              ),
                              
                           
                          
                          
                          Positioned(
                            right: 10,
                          top: 10,
        
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
        
                              ),
                              child: Center(child: Icon(Icons.favorite,
                              color: Color(0xFFEF6969).withOpacity(0.95),
                              ),
                              ),
                            )
                            ),
                              ]
                       ),
                       
                       ),
        
                       SizedBox(height: 10, width: 18,),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                       children: [ 
                       
                       Text(
                        
                        productTitles[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                               
                        ),
                       ),
                               
                       SizedBox(height: 8,),
                       
                        SizedBox(
                          width: 130,
                       
                          child: Text('a garment for the upper body usually having a front opening, collar, lapels, sleeves, and pockets.',
                          maxLines: 6,                    
                          overflow: TextOverflow.ellipsis,
                                                 ),
                        ),

                        Row(

                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Text(
                           '('+ reviews[index]+ ')'
                          ),
                          SizedBox(height: 10, width: 10,),
                          Text(
                            prices[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          )
                        ],
                       ),
                       
                       ]
                       )
        
                        ],
                      ),
        
                    );
                    }
                    ),
                  ),
        
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Newest Products", 
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),
                  ),


                  SizedBox(height: 20,),
                  GridView.builder(
                    itemCount: productTitles.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .65,
                      // crossAxisSpacing: 30,
        
                      ),
                      itemBuilder: (context, index){



                        return Container(
                            width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
        
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                 child: Image.asset(imageList[index],
                                 fit: BoxFit.cover, 
                                 width: 180,
                                 height: 200,
                               ),
                                 
                                ),
                              ),
                              
                           Positioned(
                            right: 10,
                          top: 10,
                             child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
        
                              ),
                              child: Center(child: Icon(Icons.favorite,
                              color: Color(0xFFEF6969).withOpacity(0.95),
                              ),
                              ),
                            )
                            ),
                              ]
                       ),
                       
                       ),
        
                       SizedBox(height:8,),
                       Text(
                        
                        productTitles[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
        
                        ),
                       ),
        
                       SizedBox(height: 10,),
                       Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Text(
                           '('+ reviews[index]+ ')'
                          ),
                          SizedBox(height: 10, width: 8,),
                          Text(
                            prices[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          )
                        ],
                       )
        
        
                        ],
                      ),
        
                    );
                      },
        
                  ) 
         ],
        ),
      ),
      )
      ),
    );
  }
}




// 1.12