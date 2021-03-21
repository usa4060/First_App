import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moojusik',

      //1. 앱바 색상, 배경색상, 텍스트 글씨체 등등 앱의 전체적인 디자인 테마는 화면마다 설정해주지 말고 여기서 한번에 지정해줄 것.
      //특별한 화면 구성이 필요할 때만 해당 화면에서 지정해주는 것이 좋다.(만들때, 수정할 때)
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightGreen[100],
          appBarTheme: AppBarTheme(
              color: Colors.white,
              textTheme: TextTheme(title: TextStyle(color: Colors.green[400])),
              centerTitle: true)),
      home: MooJaeBae(),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Second Page',
        ),
        //backgroundColor: Colors.white,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "뒤로 가기",
            style: TextStyle(color: Colors.green[400]),
          ),
        ),
      ),
    );
  }
}

Widget myComunityText(String textName, String firstText) {
  return Padding(
    padding: EdgeInsets.fromLTRB(18.0, 0.0, 0.0, 0.0),
    child: Row(
      children: <Widget>[
        Text(
          textName,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 30,
        ),
        Text(
          firstText,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget myButton(context, String name, String image) {
  return FlatButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
    },
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          child: Image.asset(image),
        ),
        Text(name)
      ],
    ),
  );
}

//jhhj
class MooJaeBae extends StatelessWidget {
  //3. 코드에서 겹치는 부분이 많다면 함수를 통한 모듈화로 간단하게 해주는 것이 좋습니다.
  //코드를 짜는데 드는 시간이 단축되고, 보기도 편하
  //함수에 전달하는 인자를 달리하여 형태를 다르게 만들어 줄 수도 있고, 나중에 전체적인 디자인을 수정할 때도 하나하나 수정하는 것보다
  //한꺼번에 수정할 수 있게 되기 때문입니다.며
  //3-2에서 이 함수를 호출한 내용도 봐주세요.

//test
  @override
  Widget build(BuildContext context) {
    double phone_size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MineCraft Guide',
          //style: TextStyle(color: Colors.green[400]),
        ),
        //backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.green[50],
      body: Column(
        children: [
          SizedBox(
            height: 180.0,
            width: 9000.0,

            //2. 이미지가 선택된 영역에 채워지는 방법을 골라주는 요소: fit
            child: Image.asset(
              'assets/lion.png',
              //fit: BoxFit.cover,
            ),
          ),
          Container(
            height: phone_size - 260,
            child: ListView(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.green[600],
                    ),
                    title: Text(
                      'search....',
                      style: TextStyle(
                        color: Colors.green[600],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Text(
                            '가이드',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              //3-2
                              myButton(context, "블럭", 'assets/1.png'),
                              myButton(context, "몬스터", 'assets/2.png'),
                              myButton(context, "조합", 'assets/3.jpg'),
                              myButton(context, "건축", 'assets/4.jpg'),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              myButton(context, "인챈트", 'assets/5.png'),
                              myButton(context, "포션", 'assets/6.png'),
                              myButton(context, "주민", 'assets/7.png'),
                              myButton(context, "공략", 'assets/8.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Text(
                            '커뮤니티',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        myComunityText('자유게시판', '안녕하세요 잘부탁드립니다.'),
                        Container(
                          height: 5,
                        ),
                        myComunityText('자유게시판', '안녕하세요 잘부탁드립니다.'),
                        Container(
                          height: 5,
                        ),
                        myComunityText('자유게시판', '안녕하세요 잘부탁드립니다.'),
                        Container(
                          height: 5,
                        ),
                        myComunityText('자유게시판', '안녕하세요 잘부탁드립니다.'),
                        Container(
                          height: 5,
                        ),
                        myComunityText('자유게시판', '안녕하세요 잘부탁드립니다.'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
