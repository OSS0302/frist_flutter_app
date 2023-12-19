import 'package:flutter/material.dart';
//케멜 케이스 Case: 뱀형
//snake_case : 뱀형
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈 화면 '),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end, // 메인방향 정렬 ,
          mainAxisAlignment: MainAxisAlignment.center, // 메인방향 정렬 ,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${number}',
              style: TextStyle(
                fontSize: 60,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text(
                'ElevatedButton',
              ),
            ),
            TextButton(
              onPressed: () {
                print('TextButton');
              },
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton');
              },
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신
          setState(() {
            number++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
