import 'package:flutter/material.dart';

//케멜 케이스 Case: 뱀형
//snake_case : 뱀형
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 상수 : 변하지 않는 값
  // 인스턴스: final TextEditingController _textController = TextEditingController(); 실제 메모리  주소
  // 변수 변할 수있는 데이터 자료형
  // 객체 오브젝트
  // 지역변수 지역안에 ( 메서드 안에서 ) 시영가능
  // 전역변수 어디에서 사용가능
  // 터미널 flutter clean : 빌드 파일 찌꺼기 제거
  int number = 10; // number 변수에 오른쪽값을 넣겠다.
  String _text = '';
  final _textController = TextEditingController();

  //컨트롤러 메모리 해결
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈 화면 '),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end, // 메인방향 정렬 ,
            mainAxisAlignment: MainAxisAlignment.center, // 메인방향 정렬 ,
            children: [
              // Container 영역
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              //둘다 비슷하다 색깔 주는거 모양주는 말곤 같다.
              SizedBox(height: 30),
              Container(height: 10),
              Text(
                // 인스펙션 사용법 통해서 앱 의구조나 애니메이션 느리게 여러가지 기능 들이 있다.
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
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자 입력',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                        // 화면 갱신
                        //  프리퍼티나 클래스앞에 _를 붙인 이유 캡슐화 데이터보호
                        setState(() {});
                      },
                      child: Text('로그인'),
                    ),
                  ),
                ],
              ),
              Text(_textController.text),
              //이미지 위젯 네트워크 이미지복사 와 다운로드 해서 assets 파일 넣고 yaml 안에 사진 경로넣기
              // 이미지 채우기
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQZhJSwfqNWUuuNpqppZqdAx8v7OlFle5Csr6NNf9SgHG8zuihCnbzHO9yQmviv7eXe34&usqp=CAU',
                width: 100,
                height: 100,
                // 박스 꽉 채우기
                fit: BoxFit.cover,
              ),
              Container(
                // 크기:(컨테이너>이미지) 컨테이너 크기 넓이 120 높이 120 이면 이미지 크기가  컨테이너 크기를 따라간다.
                // 크기:(컨테이너<이미지) 자식인 이미지 가 컨테이너 보다 크면 이미지 크기를 따라간다.
                color: Colors.red,
                // 패딩 주기
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/pic.jpg',
                    width: 100,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
