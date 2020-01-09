import 'package:flutter/material.dart';
import 'package:flutterproject1/custom_timeline.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: orderTimeLine(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget orderTimeLine() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: EdgeInsets.only(
          // bottom: SizeConfig.safeBlockHorizontal * 3,
          ),
      padding: EdgeInsets.only(
          // top: SizeConfig.safeBlockHorizontal * 3,
          // left: SizeConfig.safeBlockHorizontal * 7,
          // bottom: SizeConfig.safeBlockHorizontal * 3,
          ),
      child: CustomTimeLine(
        itemCount: 6,
        completeIndex: 4,
        builder: (context,i){
          return Text("data\n data");
        },
      ),
    );
  }
}
