import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({super.key, required this.number});
  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  List<String> testImageList = [
    "https://www.bbc.com/korean/news-46312563",
    "http://m.blog.naver.com/cuf1105/220167346082",
    "http://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=7303263",
    "https://www.koreapas.com/m/view.php?id=gofun&back=1&tagkeyword=&no=193901&page=3",
    "https://www.instiz.net/name_enter/67747588",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage("https://www.google.com/search?q=%EB%B9%A1%EC%B9%9C+%EB%8B%A4%EB%9E%8C%EC%A5%90&tbm=isch&ved=2ahUKEwiWnYOXobr5AhU1yYsBHa2mCGQQ2-cCegQIABAA&oq=%EB%B9%A1%EC%B9%9C+%EB%8B%A4%EB%9E%8C%EC%A5%90&gs_lcp=CgNpbWcQAzoICAAQgAQQsQM6CwgAEIAEELEDEIMBOgUIABCABFCFE1itGGC7GWgAcAB4AIABgQGIAcIGkgEDMy41mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=GpbyYpaoCrWSr7wPrc2ioAY&bih=911&biw=870&client=safari#imgrc=mEUaRZcK4vf2_M"),
                ),
                SizedBox(width: 5,),
                Text('다람쥐'),
                  ],
                ),
                Icon(Icons.subject)
              ],
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Image.network(testImageList[Random().nextInt(5)]),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 7,),
                Icon(Icons.chat_bubble_outlined),
                SizedBox(width: 7,),
                Icon(Icons.send)
              ],
                ),
                Container(width: 60,child: Text('ㅎㅇ'),),
                Icon(Icons.bookmark_border)
              ],
            ),
            
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Text('좋아요 126개')
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Center(
              child: Text('다람쥐 .'),
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Text('다람쥐')
          ),
        ],
      ),
    );
  }
}
