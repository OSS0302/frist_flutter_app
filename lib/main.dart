import 'package:flutter/material.dart';
import 'package:frist_flutter_app/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 안드로이드 MaterialApp ios 쿠퍼티노 메인 왠만하지 않으면 고치지 않는다.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 블랙 앤 화이트는 안된다.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
