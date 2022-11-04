import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:news_app/Models/fantasy.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/Pages/my_contest.dart';
import 'package:news_app/Widgets/tile.dart';


late String stringResponse;
var mapResponse;
var listResponse;

class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {

   Future<List<Fantasy>?> getFantasy() async {
    var uri = Uri.parse(
        'https://test.fanadda.com/api/api/v71PTQ926/api/auth/getmatchlist');
    http.Response response;
    response = await http.get(uri);
    if (response.statusCode == 200) {
     setState(() {
        stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        listResponse = mapResponse['result'];
      });
    }
  }
  List<Fantasy>? fantasies;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    //fetch data from API
    getData();
  }

  getData() async {
    fantasies = await getFantasy();
    if (fantasies != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }
  
   


  @override
  Widget build(BuildContext context) {
    return Center(
      child: listResponse !=null && listResponse.length> 0 ? ListView.builder(
        itemCount: listResponse.length,
        itemBuilder: (context, index) {
          return Tile(
            
            team1Name: listResponse[index]['team1name'].toString(),
            team2Name:listResponse[index]['team2name'].toString() ,
            team1Fullname: listResponse[index]['team1fullname'].toString(),
            team2Fullname:listResponse[index]['team2fullname'].toString() ,
            team1Logo: listResponse[index]['team1logo'].toString(),
            team2Logo: listResponse[index]['team2logo'].toString(), 
            seriesname: listResponse[index]['seriesname'].toString(),  
            sportsType: listResponse[index]['sportType'].toString(),
            timeStart:  DateTime.parse(listResponse[index]['time_start']), 
            lockTime:  DateTime.parse(listResponse[index]['locktime']['date'].toString()),
            timeDifference: listResponse[index]['timedifference'].toString(),
            currentTime: DateTime.now(),  
            OnTap:(){
              print("Printing index "+"${index}");
              Get.to(
                arguments:{
                'team1Name' : listResponse[index]['team1name'].toString(),
                'team2Name' : listResponse[index]['team2name'].toString(),
                'team1Logo' : listResponse[index]['team1logo'].toString(),
                'team2Logo' : listResponse[index]['team2logo'].toString(),
                'ind': index,
                'timeStart': DateTime.parse(listResponse[index]['time_start']), 
                'currentTime': DateTime.now(),
                } ,
              
                ()=> MyContest(
              )
              );
            }, 
          );
        },
       
      ) : CircularProgressIndicator()
    );
  }
}