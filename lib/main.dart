import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title : Text('roll and win'),),
      body : DicePage(),
    ),

  ));
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn=1;
  int rdn=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  calldice();
                });
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                 calldice();
                });
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }

  void calldice() {
    ldn= Random().nextInt(6)+1;
    rdn=Random().nextInt(6)+1;
  }
  }


