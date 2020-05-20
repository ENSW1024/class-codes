import 'package:flutter/material.dart';
import 'package:lifting_up_code/card_exemplo.dart';

class MySecondPage extends StatefulWidget {  
  const MySecondPage({Key key}) : super(key: key);

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  List args;
  int count = 0;

  @override
  void initState() {        
    // print(ModalRoute.of(context).settings.arguments);
    // args = ModalRoute.of(context).settings.arguments;
    // count = args[0];
    super.initState();
  }

  void _reset(){
    print('aqui');
    setState(() {
      args[0] = 99;
    });
  }


  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context).settings.arguments);
    args = ModalRoute.of(context).settings.arguments;
    count = args[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('My Second Page'),        
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Second Page: $count'),
              CardExemplo(count: args[0], onPressed: args[1],)
            ],
          ),
        ),
      )
    );
  }
}