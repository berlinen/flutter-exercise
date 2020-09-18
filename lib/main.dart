import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('welcome to flutter～'),
          ),
          body: new Center(
            //child: new Text('Hello World'),
            child: new RandomWords(),
          ),
        ));
  }
}

// Scaffold 是 Material library 中提供的一个widget, 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。

// widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己。

// 本示例中的body的widget树中包含了一个Center widget, Center widget又包含一个 Text 子widget。 Center widget可以将其子widget树对其到屏幕中心。

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

// RandomWords widget除了创建State类之外几乎没有其他任何东西
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
