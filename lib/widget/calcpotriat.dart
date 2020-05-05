import 'package:calc/widget/custombutton.dart';
import 'package:flutter/material.dart';

class CalcPotriat extends StatefulWidget {
  final String str;
  final String title;
  CalcPotriat({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalcPotriatState createState() => _CalcPotriatState(this.str);
}

class _CalcPotriatState extends State<CalcPotriat> {
  String _str;
  _CalcPotriatState(this._str);
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14,14,15,30),
                child: Text( 
                  _str,
                  textScaleFactor: 4.0,
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Expanded( 
            child: Row(
              children: <Widget>[
                CustomButton('C', (){}, 9, Colors.black12),
                CustomButton('DEL', (){}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded( 
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('7', (){}, 3, Colors.black12),
                CustomButton('8', (){}, 3, Colors.black12),
                CustomButton('9', (){}, 3, Colors.black12),
                CustomButton('+', (){}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded( 
            flex: 1,
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('4', (){}, 3, Colors.black12),
                CustomButton('5', (){}, 3, Colors.black12),
                CustomButton('6', (){}, 3, Colors.black12),
                CustomButton('-', (){}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded( 
            flex: 1,
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('1', (){}, 3, Colors.black12),
                CustomButton('2', (){}, 3, Colors.black12),
                CustomButton('3', (){}, 3, Colors.black12),
                CustomButton('*', (){}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded( 
            flex: 1,
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('0', (){}, 3, Colors.black12),
                CustomButton('.', (){}, 3, Colors.black12),
                CustomButton('=', (){}, 3, Colors.black12),
                CustomButton('/', (){}, 3, Colors.black12),
              ],
            ),
          ),
      ],
      ),
    );
  }
}
