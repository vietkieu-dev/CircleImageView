import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

void main() {
  runApp(MyApp())

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flushbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Flushbar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  void _showFlushbar(BuildContext context) {
    Flushbar(
      title: "Xin chào!",
      message: "Đây là một ví dụ về Flushbar trong Flutter.",
      icon: const Icon(
        Icons.access_alarms_outlined,
        size: 28.0,
        color: Colors.blue,
      ),
      duration: const Duration(seconds: 4),
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  void _showFlushbarWithAction(BuildContext context) {
    Flushbar(
      title: "Cảnh báo",
      message: "Bạn có muốn tiếp tục không?",
      duration: const Duration(seconds: 4),
      mainButton: TextButton(
        child: const Text(
          "CÓ",
          style: TextStyle(color: Colors.amber),
        ),
        onPressed: () {
          Navigator.of(context).pop(); // Đóng Flushbar
          // Thêm hành động của bạn ở đây
        },
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Hiển thị Flushbar Cơ bản'),
              onPressed: () => _showFlushbar(context),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Hiển thị Flushbar với Hành động'),
              onPressed: () => _showFlushbarWithAction(context),
            ),
          ],
        ),
      ),
    );
  }
}