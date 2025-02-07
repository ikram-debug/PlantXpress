import 'package:flutter/material.dart';
import 'package:plant_delivery_app/Utils/color.dart';
import 'package:plant_delivery_app/View%20Model/Home_Screen_VM.dart';
import 'package:plant_delivery_app/View/Details_Screen/Details_Screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              bodypart(size, context),
            ],
          ),
          Positioned(
            top: 110,
            left: 20,
            child: Text(
              'Plants',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 35,
            right: 15,
            child: Icon(Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

Container bodypart(Size size, BuildContext context) {
  return Container(
    width: size.width*0.8,
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 100),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsSrc()));
            },
            child: const Hero(
              tag: 'Flower 1',
              child: HomeScreenVm(
                  image: 'assets/flower 3.png',
                  name: 'House Shape Close',
                  price: '45',
              ),
            ),
          ),
          const   Hero(
            tag: 'Flower 2',
            child: HomeScreenVm(
              image: 'assets/flower 2.png',
              name: 'Glass water',
              price: '60',
            ),
          ),
          const  Hero(
            tag: 'Flower 3',
            child: HomeScreenVm(
              image: 'assets/flower 1.png',
              name: 'House Shape Close',
              price: '70',
            ),
          ),
          const Hero(
            tag: 'Flower 4',
            child: HomeScreenVm(
              image: 'assets/flower 4.png',
              name: 'House Shape Close',
              price: '80',
            ),
          ),
          const  Hero(
            tag: 'Flower 5',
            child: HomeScreenVm(
              image: 'assets/flower 5.png',
              name: 'House Shape Close',
              price: '50',
            ),
          ),
          const  Hero(
            tag: 'Flower 6',
            child: HomeScreenVm(
              image: 'assets/Flower 6.png',
              name: 'House Shape Close',
              price: '65',
            ),
          ),
          const  Hero(
            tag: 'Flower 7',
            child: HomeScreenVm(
              image: 'assets/flower 7.png',
              name: 'House Shape Close',
              price: '65',
            ),
          )
        ],
      )
    )
  );
}

Expanded sideBar() {
  return Expanded(
            child: Container(
              color: secondaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 38),
                    child: Image.asset('assets/more icon.png',
                      width: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Green',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 130),
                  Padding(
                    padding: EdgeInsets.only(right: 14),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: RichText(text: TextSpan(
                          children: [
                            TextSpan(
                                text: ".",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                )
                            ),
                            TextSpan(
                                text: 'Shape class',
                                style: TextStyle(
                                  color: primaryColor,
                                )
                            ),
                          ]
                      )
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Indore Plnats',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Green Plants',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16, top: 110),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: primaryColor,
                      ),
                      width: 60,
                      height: 70,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
      }
