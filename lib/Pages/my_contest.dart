// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:news_app/Models/contest.dart';
import 'package:news_app/Pages/tab1.dart';
import 'package:http/http.dart' as http ;

import '../Widgets/contest_tile.dart';
var stringResponse;
var mapResponse;
var contestResponse;
var currentTime = DateTime.utc(2022,10,29 ,15,07,53);
var tS = Get.arguments['timeStart'];
var diff =currentTime.difference(Get.arguments[tS]).inHours.toString();


class MyContest extends StatefulWidget {
 
  const MyContest({
    super.key,
  });
  
  @override
  State<MyContest> createState() => _MyContestState();
}

class _MyContestState extends State<MyContest> {

  Future<List<Welcome>?> getContest() async{
        var uri = Uri.parse('https://test.fanadda.com/api/api/v71PTQ926/api/auth/get-challenges-by-category?matchkey=c.match.kums_vs_fut.b1364');
        http.Response response;
        response = await http.get(uri);
        if(response.statusCode ==200){
          setState(() {
            //  stringResponse = response.body;
              mapResponse = jsonDecode(response.body);
              contestResponse = mapResponse['result'];
          });
        }
  }
  var _ind = Get.arguments['ind'];
  List<Welcome> ? contests;
  var isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  getData()async{
      contests = await getContest();
      if(contests != null){
        setState(() {
          isLoaded = true;
        });
      }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
        appBar: AppBar(
          backgroundColor: Color(0xFFE91010),
          automaticallyImplyLeading: false,
          actions: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0,0, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xE9FFFFFF),
                          size: 30,
                        ),
                        onPressed: () {
                          Get.back();
                          print(_ind);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 110, 0),
                      child: Text(
                        'My Contest',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
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
                    SizedBox(
                      width: 20,
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
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                 
                  children: [
                    Container(
                      width: 380,
                      height: 70,
                      color: Color(0xFFE91010),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 350,
                            height: 50,
                            color: Colors.white,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                 
                                  Padding(padding: EdgeInsets.only(left: 1)),
                                  Image.network(
                                      Get.arguments['team1Logo']),
                                  SizedBox(
                                    width: 10,
                                  ),
                                     Text( 
                                    Get.arguments['team1Name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.black,
                                          fontSize: 20)),
                                  Text("  Vs  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,color: Colors.black,
                                          fontSize: 20)),
                                  Text(Get.arguments['team2Name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.black,
                                          fontSize: 20)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                      Get.arguments['team2Logo'],),
                                  Padding(padding: EdgeInsets.only(right: 1)),
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
          centerTitle: false,
          elevation: 0,
          toolbarHeight: 150,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container( 
                height:70,
                child: Row(
                  children: [
            Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
        child: FaIcon(
          FontAwesomeIcons.trophy,
          color: Color(0xFF3ECF08),
          size: 40,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Adda For Champions", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
        ,Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20,0,0,0),
          child: Text("Low Entry Fee,Intense Competition", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 142, 133, 133)),),
        )
        
        ],
      )
                  ],
                ),
              ),
              Container(
                width:500,height: 610,
                child:Center(
                    //  child: Text(contestResponse['categories'][0]['leagues'][0]['entryfee'].toString()),
                    child: contestResponse!= null && contestResponse.length >0 ?
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return
                          ContestTile(
                          enterFree: contestResponse['categories'][index]['leagues'][_ind]['entryfee'].toString() ,
                          prizeMoney: contestResponse['categories'][index]['leagues'][_ind]['win_amount'].toString() ,
                          multi_entry_limit:  contestResponse['categories'][index]['leagues'][_ind]['multi_entry_limit'].toString() ,
                          spotLeft:  contestResponse['categories'][index]['leagues'][_ind]['maximum_user'].toString() ,
                          totalWinner:contestResponse['categories'][index]['leagues'][_ind]['totalwinners'].toString() ,
                          );
                        },
                      ): CircularProgressIndicator()
                    ),
                   
              ),
               Container( 
               color:Color.fromARGB(255, 5, 44, 76), height: 60,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container( 
                      width: 380,height: 50,
                       child: ElevatedButton(
                             onPressed: () {},
                          style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                         // Background color
                             ),
                                  child: Text("Create Team"
                                  ,
                                style: TextStyle(fontSize: 15),
      ),
    ),
                     ),
                   ],
                 ),
               )
            
            ],
          ),
        ));
  }
}
