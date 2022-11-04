
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 int _currentIndex = 0;
  List<Widget> pages = const[

      HomePageWidget(),
     
    
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Scaffold(

        body: Center(child: pages[_currentIndex]),
        bottomNavigationBar: _currentIndex != null ?
         BottomNavBarMallika1() :null
        

      )
    );
}}

class BottomNavBarMallika1 extends StatelessWidget {
  const BottomNavBarMallika1({Key? key}) : super(key: key);

  final orangeColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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



  /*'
  // Image Logo
  child: Image.network(listResponse[index]['team1logo'])


  //name
 Text(listResponse[index]['name'].toString())

  */