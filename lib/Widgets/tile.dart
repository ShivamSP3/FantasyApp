import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tile extends StatelessWidget {
  final OnTap;
   final  DateTime currentTime,timeStart,lockTime;
  final String team1Name, timeDifference , team2Name , team1Fullname, team2Fullname,team1Logo,team2Logo,seriesname,sportsType;
    Tile({super.key, required this.team1Name, 
    required this.team2Name, required this.team1Fullname,
     required this.team2Fullname, required this.team1Logo,
      required this.team2Logo, required this.seriesname, 
      required this.sportsType, required this.timeStart, 
      required this.OnTap, required this.timeDifference,
       required this.lockTime, required this.currentTime,
        });

 
  
  @override
  Widget build(BuildContext context) {
   
    return // Generated code for this Container Widget...
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
  child: InkWell(
    onTap: OnTap,
    child: Container(
      width: 360,
      height: 130,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  
                  'Cricket |'+ sportsType + seriesname  ,
                  style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 130, 126, 126),fontWeight: FontWeight.w600)
                ),
              ),
            ],
          ),
          Divider(
            height: 1,color: Colors.grey,
          ),
  
    //   1 St Row 
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                child: Text(
                team1Fullname ,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                child: Text(
                  team2Fullname,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)
                ),
              ),
            ],
          ),
          // 2nd ROw
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Container(
                  height: 30,width: 30,
                  child: Image.network(team1Logo)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 60, 0),
                  child: Text(
                    team1Name,
                    style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 1, 24, 42)
                    ),
                  ),
                ),
                Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  timeStart.difference(lockTime).inHours.toString()+" Hours Left" ,
                  style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
                  color: Colors.red
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                  child: Text(
                    team2Name,
                    style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 1, 24, 42)),
                  ),
                ),
                 Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Container(
                  height: 30,width: 30,
                  child: Image.network(team2Logo,fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,color: Colors.grey,
          ),
          // 3rd ROW
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    backgroundColor: Colors.white
                  ),
                 
                  onPressed: () {
                    print('Button pressed ...');
                  }, child: Text("Mega",style: TextStyle(
                    color: Colors.green,
          
                  ),),
                 
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
)
;
  }
}