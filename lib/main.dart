import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Calculator(),
    ),
  );
}

class Calculator extends StatelessWidget {

  
  Expanded CalButton(String txt, String id) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
        child: Container(
          height: 70.0,
          child: FlatButton(
            child: Text(
              '$txt',
              style: TextStyle(fontSize: 30.0),
            ),
            color: Colors.indigo,
            onPressed: () {
             
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text(
          'CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: TextField(
                textAlign: TextAlign.right,
                maxLines: 4,
                
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                  child: Container(
                    height: 70.0,
                    child: FlatButton(
                      child: Text(
                        'C',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      color: Colors.indigo[300],
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                CalButton('1','b1'),
                CalButton('2','b2'),
                CalButton('3','b3'),
                CalButton('+','b+'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                CalButton('4','b4'),
                CalButton('5','b5'),
                CalButton('6','b6'),
                CalButton('-','b-'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                CalButton('7','b7'),
                CalButton('8','b8'),
                CalButton('9','b9'),
                CalButton('*','b*'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                CalButton('=','b='),
                CalButton('0','b0'),
                CalButton('.','b.'),
                CalButton('/','b/'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
