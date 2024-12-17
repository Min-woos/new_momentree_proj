import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstLogoPage(),
    );
  }
}

class FirstLogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 화면을 꽉 채우는 로고 GIF
          Image.asset(
            'assets/logo.gif', // 로고 GIF 경로
            fit: BoxFit.cover,
          ),
          // 로고 이름 (상단)
          Positioned(
            top: 80, // 상단 여백 조정
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Momentree', // 로고 이름
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black45,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // 하단 버튼
          Positioned(
            bottom: 50, // 하단 여백
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 로그인 하기 버튼
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('로그인 하기'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 50),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                // 문의 하기 버튼
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InquiryPage()),
                    );
                  },
                  child: Text('문의 하기'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 2),
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 50),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('로그인 하기')),
      body: Center(
        child: Text(
          '여기는 로그인 페이지입니다.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class InquiryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('문의 하기')),
      body: Center(
        child: Text(
          '여기는 문의 하기 페이지입니다.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}