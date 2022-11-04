// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ContestTile extends StatelessWidget {
     final String prizeMoney , enterFree, spotLeft, multi_entry_limit, totalWinner;
  const ContestTile({super.key,required this.prizeMoney, required this.enterFree, required this.spotLeft, required this.multi_entry_limit, required this.totalWinner,
    });

  @override
  Widget build(BuildContext context) {
   
    return // Generated code for this Container Widget...
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
  child: InkWell(

      child: Container(
        width: 360,
        height: 180,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
          
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Prize Pool' ,
                    style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 130, 126, 126),fontWeight: FontWeight.w600)
                  ),
                ),
                Padding(
        padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
        child: FaIcon(
          FontAwesomeIcons.trophy,
          color: Color(0xFF3ECF08),
          size: 20,
        ),
      ),
      Text(
        'Winners  ' +totalWinner,
        style: TextStyle(fontSize: 18),
      ),
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.black,
          size: 20,
        ),
      ),
                 
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {
                        Icon(Icons.favorite,color: Colors.green,);
                   
                 }, icon: Icon(Icons.favorite_border),color: Colors.green,),
                      Text(
                        'Entry' ,
                        style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 130, 126, 126),fontWeight: FontWeight.w600)
                      ),
                    ],
                  ),
                ),
    
    
              ],
            ),
      
      //   1 St Row 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                  child: Text(
                  "\u{20B9}"+ prizeMoney,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: ElevatedButton(
                     onPressed: () {},
                  style: ElevatedButton.styleFrom(
                   primary: Colors.green, // Background color
                     ),
                          child: Text("\u{20B9}"+enterFree
                          ,
                        style: TextStyle(fontSize: 15),
      ),
    )
                ),
              ],
            ),
            Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
      child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 340,
          height: 15,
          decoration: BoxDecoration(
            color: Color(0xE9E7E1E1),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
      ),
    ),
            // // 3rd ROW
            Row(
             
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child : Text("Only "+ multi_entry_limit+" Spot left",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700), ),
                  ),
                   Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child : Text( multi_entry_limit +" Teams",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700), ),
                  )
                ],
            ),
            SizedBox(height: 13,),
            Container(
              width: 380,height: 30//,
               ,decoration: BoxDecoration(
        color: Color(0xE9E7E1E1),
          borderRadius: BorderRadius.circular(10),),
          child: Row(
            children: [
              SizedBox(width: 10,)
              ,Text("Join Upto " + spotLeft+ " entries", style:  TextStyle(color: Colors.green,fontSize: 16))
            ],
          ),
              
            )
          ],
        ),
      ),
    ),
  )
;
  }
}