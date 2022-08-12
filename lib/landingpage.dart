import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_memo/mainpage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer( //init제일처음 1번만 실행/3초후 메인페이지로 가겠다. 
      Duration(seconds: 3),
      () {
        Get.to(()=>Mainpage()); //get.to말고 get.offall>다 지우고가겠삼
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //이하에 묶인것들 모두 겹치게 보여주세요 
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff010c1e),
                  Color(0xffd5d9e0)
                ]),
            ),
            child: Center(child: Text(
              'FAKELIFE BY IMDAN',
              style: TextStyle(
                color: Color(0xffd5d9e0),
                fontSize: 35.0,
                
                fontWeight: FontWeight.bold,
                
              ),
            ),
            ),
          ),
        
        CircularProgressIndicator(color: Color(0xffd5d9e0),
        ),
        ],
      ),
    );
  }
}
