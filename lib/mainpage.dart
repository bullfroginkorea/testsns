import 'package:flutter/material.dart';
import 'package:flutter_memo/mainpages/homescreen.dart';
import 'package:flutter_memo/mainpages/mylikescreen.dart';
import 'package:flutter_memo/mainpages/myscreen.dart';
import 'package:flutter_memo/mainpages/showgridscreen.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [ //하단아이콘인덱스먹이기 
    BottomNavigationBarItem(
      label: '0번',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: '1번',
      icon: Icon(Icons.grid_view_rounded),
    ),
    BottomNavigationBarItem(
      label: '2번',
      icon: Icon(Icons.favorite_rounded),
    ),
    BottomNavigationBarItem(
      label: '3번',
      icon: Icon(Icons.account_circle_sharp),
    )
  ];

  List pages= [ //하단 아이콘 눌렀을때 바디도 같이 연결 리스트인덱스 
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),

    /*Container(
      child: Center(child: Text('0번입니다.')),
    ),
    Container(
      child: Center(child: Text('1번입니다.')),
    ),
    Container(
      child: Center(child: Text('2번입니다.')),
    ),
    Container(
      child: Center(child: Text('3번입니다.')),
    ),*/
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAKELIFE',style: TextStyle(fontSize: 15),),
        backgroundColor: Color(0xff88a2bc),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffffff), //bar색상
        selectedItemColor: Color(0xff001e38), //선택된아이템 색상
        unselectedItemColor: Color(0xff4a6d88).withOpacity(.60), //선택안된,투명성
        selectedFontSize: 14, //선택 폰트사이즈
        unselectedFontSize: 10, //안선택 폰트사이즈
        currentIndex: _selectedIndex, //현재 인덱스는 selectedindex

        showSelectedLabels: false, //선택된 라벨 안보이게
        showUnselectedLabels: false,//안선택된 
        onTap: (int index) {  
          setState(() {
            _selectedIndex = index; //클릭시 selectdindex의 인덱스로 바뀜0,1,2,3
          });
        },
        items: bottomItems, //위에 만든거 사용 
      ),
      body: pages[_selectedIndex], //page리스트로 현재 인덱스연결된곳으로감 

    );
  }
}
