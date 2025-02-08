import 'package:flutter/material.dart';
import 'package:plant_delivery_app/Utils/color.dart';
import 'package:plant_delivery_app/View/Home_screen/Home_Screen_View.dart';

class DetailsSrc extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const DetailsSrc({super.key,
    required this.image,
    required this.name,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            BottomPart(context),
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
                              Navigator.pop(context);
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
                          name,
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
                            Image.asset(
                              image,
                             width: MediaQuery.of(context).size.width, 
                              fit: BoxFit.fill,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 250),
                              child: Container(
                                height: 22,
                                  width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 275),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[100],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 290),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[100],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 305),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[100],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            Positioned(
              top: 150,
                left: 32,
                child: Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
            ),
            Positioned(
              top: 80,
                right: 40,
                child:
                Icon(Icons.favorite_border,
                  size: 32,
                  color: primaryColor,
                ),
            ),
            Positioned(
              top: 380,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),
                    ),
                    color: primaryColor,
                  ),
                  height: 70,
                  width: 70,
                  child:
                  Icon(Icons.add_circle,
                    size: 40,
                    color: secondaryColor,
                  ),
                ),
            ),
          ],
        ),
      )
    );
  }
}

Positioned BottomPart(BuildContext context){
  return Positioned(
    bottom: 0,
    child: Container(
      height: MediaQuery.of(context).size.height*0.4,
      width: MediaQuery.of(context).size.width,
      color: primaryColor,
      child: const Padding(
        padding: EdgeInsets.only(top: 220, left: 24),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '40cm - 50cm',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Text(
                  'Pot',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Self Watering Pot',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Text(
                  'Temperature',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '18C - 15C',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}