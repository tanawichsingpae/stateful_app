import 'dart:math';
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}
class _ColorChangerState extends State<ColorChanger> {
  Color _currentColor = Colors.blue;
  
  final List<Color> _colors = [ Colors.red,Colors.green, Colors.orange, Colors.yellow, Colors.purple,];
  final Random _random = Random();

  @override
  void initState(){
    super.initState();
    _currentColor = Colors.blue;
  }
  

  void _changeColor() {
    setState(() { _currentColor = _colors[_random.nextInt(_colors.length)];});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      color: _currentColor,
      child: Center(child: Text('Tap me',)),
      ),
    );
  }
}