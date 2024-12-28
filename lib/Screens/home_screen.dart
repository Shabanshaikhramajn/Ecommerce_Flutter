import 'package:ecommerce/Screens/onboarding_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> categories = ['ALL', 'Category', 'Recommended','Recommended', 'fsjfoi', 'sfijdsofjdso','ffdsjfso','dsfjoisf'];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 20),
      
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
            )


        ],
      ),
      )
      ),
    );
  }
}




// 1.12