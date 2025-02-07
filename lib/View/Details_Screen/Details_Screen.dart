import 'package:flutter/material.dart';
import 'package:plant_delivery_app/View/Home_screen/Home_Screen_View.dart';

class DetailsSrc extends StatelessWidget {
  const DetailsSrc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Hero(tag: 'Flower 1',
            //     child: Image.asset('assets/flower 3.png'
            //     ),
            // ),
            Positioned(
              top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.85,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,
                            right: 16,
                            left: 16,
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()));
                            },
                            child: Icon(Icons.arrow_back,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          Image.asset('assets/fillter.png',
                            height: 30,
                              width:30,
                          ),
                        ],
                      ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          'House Shape Close',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            height: 1.01,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: 40),
                        child: Stack(
                          children: [
                            Image.asset('assets/flower 3.png',
                             width: MediaQuery.of(context).size.width, 
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),

          ],
        ),
      )
    );
  }
}
