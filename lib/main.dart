import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

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
              '${count}',
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
            count++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
