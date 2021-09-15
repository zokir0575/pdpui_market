import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        title: Text("Cars", style: TextStyle(color: Colors.red, fontSize: 30),),
          actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.red,),
          onPressed: (){},
          ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.red,),
              onPressed: (){},
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Yellow"),
                    singleTab(false,"Black"),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              //#makeitem
              makeItem("assets/images/image1.jpg"),
              makeItem("assets/images/image2.jpeg"),
              makeItem("assets/images/image3.jpeg"),
              makeItem("assets/images/image4.jpg"),
              makeItem("assets/images/image5.jpg"),

            ],
            
          ),
        ),
      ),
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
     child: Container(
      margin: EdgeInsets.only(right: 10),
       decoration: BoxDecoration(
         color: type? Colors.red:Colors.white,
         borderRadius: BorderRadius.circular(20),
       ),
       child: Center(
         child: Text(text, style: TextStyle(fontSize: type? 20:13),),
       ),
     ),
    );

  }

  Widget makeItem(String images){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: AssetImage(images),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: Offset(0,10)
          ),
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pdp Car", style: TextStyle(fontSize: 25, color: Colors.white),),
                SizedBox(width: 5, ),
                Text("Electric", style: TextStyle(fontSize: 20, color: Colors.red),)
              ],
            ),
            SizedBox(height: 15,),
            Text("100\$", style: TextStyle(fontSize: 25, color: Colors.white),),
            Container(
              margin: EdgeInsets.only(top: 100, ),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(Icons.favorite_border, color: Colors.white, size: 15,),
              ),
            ),
          ],
        ),
      )
    );
  }
}
