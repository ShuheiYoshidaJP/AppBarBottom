import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isShowingBottom = false;

  void _incrementCounter() {
    setState(() {
      isShowingBottom = !isShowingBottom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        bottom: _bottom(),
        actions: const [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
          ),
        ],
      ),
      body: const Center(
        child: Text(
          '+ボタンを押すとapp bar bottomが表示されます。',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  PreferredSizeWidget _bottom() {
    double _appBarBottomHeight = isShowingBottom ? 20 : 0;
    Size _appBarSize = Size.fromHeight(_appBarBottomHeight);
    return PreferredSize(
      preferredSize: _appBarSize,
      child: Container(),
    );
  }
}
