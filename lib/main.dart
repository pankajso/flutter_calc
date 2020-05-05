import 'package:calc/calculate.dart';
import 'package:calc/widget/calcpotriat.dart';
import 'package:calc/widget/callandscape.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(title: 'Calculator'),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _str;
  @override
  void initState() {
    
    super.initState();
    _str = Compute.str;
  }
  @override
  

  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    if(mediaquery.orientation == Orientation.landscape){
      return CalcLandscape(key: widget.key,title: widget.title, str: this._str);
    }
    return CalcPotriat(key: widget.key,title: widget.title, str: this._str);
  }
}
