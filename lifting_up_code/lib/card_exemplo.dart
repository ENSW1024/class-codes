import 'package:flutter/material.dart';

class CardExemplo extends StatefulWidget {
  final int count;
  final Function onPressed;
  const CardExemplo({Key key, this.count, this.onPressed}) : super(key: key);

  @override
  _CardExemploState createState() => _CardExemploState();
}

class _CardExemploState extends State<CardExemplo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text('${widget.count}'),
          trailing: IconButton(
            icon: Icon(Icons.refresh), 
            onPressed: widget.onPressed
          ),
        ),
      ),
    );
  }
}