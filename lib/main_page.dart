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
            // 텍스트 필드 위젯 os 상태에서 영어는 잘되지만 한글 잘 안된다.
            TextField(
              decoration: InputDecoration(
                labelText: '글자 입력',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                print(text);
              },
            ),
            //이미지 위젯 네트워크 이미지복사 와 다운로드 해서 assets 파일 넣고 yaml 안에 사진 경로넣기
            // 이미지 채우기
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQZhJSwfqNWUuuNpqppZqdAx8v7OlFle5Csr6NNf9SgHG8zuihCnbzHO9yQmviv7eXe34&usqp=CAU',
              width: 100,
              height: 100,
              // 박스 꽉 채우기
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/pic.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            )
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
