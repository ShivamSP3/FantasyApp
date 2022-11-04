import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:news_app/Models/fantasy.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Pages/tab1.dart';



class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 241, 241),
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
            
                 Tab(icon: Icon(Icons.sports_handball)),
                  Tab(icon: Icon(Icons.sports_cricket)),
                Tab(icon: Icon(Icons.sports_kabaddi_outlined)),
                Tab(icon: Icon(Icons.sports_soccer_outlined)),
                Tab(icon: Icon(Icons.sports_basketball_outlined)),
          
              ],
            ),
            backgroundColor: Color(0xFFE91010),
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xE9FFFFFF),
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            actions: [
              IconButton(
          
                icon: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: Color(0xE9FFFFFF),
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              IconButton(
                
                icon: FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
            centerTitle: false,
            elevation: 2,
          ),
          body: const TabBarView(
            children: [
            TabBar1(),
              Icon(Icons.sports_cricket),
              Icon(Icons.directions_bike),
              Icon(Icons.sports_soccer_outlined),
              Icon(Icons.sports_basketball_outlined),
            ],
          ),
        ),
      ),
    );
  }}
  class BottomNavBarMallika1 extends StatelessWidget {
     int _currentIndex = 0;
  List<Widget> pages = const[

      HomePageWidget(),
     
    
  ];
 BottomNavBarMallika1({Key? key}) : super(key: key);

  final orangeColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      Scaffold(
       
        body : BottomAppBar(
            color:  Color(0xFFE91010),
          
            child: SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBottomBar(
                        text: "Home",
                        icon: Icons.home_outlined,
                        selected: true,
                        onPressed: () {
                        
                        }),
                    IconBottomBar(
                        text: "My Contest",
                        icon: Icons.card_giftcard,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar2(
                        text: "Reward",
                        icon: Icons.bar_chart,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar(
                        text: "Account",
                        icon: Icons.person,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar(
                        text: "Refer",
                        icon: Icons.person_add,
                        selected: false,
                        onPressed: () {})
                  ],
                ),
              ),
            ),
        ),
      ),
       
   
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final orangeColor = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? orangeColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        minRadius: 25.0,
      backgroundColor: Colors.blue,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}


