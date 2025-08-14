import 'package:flutter/material.dart';
import 'package:stateful_app/colors_changger.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomPageState();
}
class _HomPageState extends State<HomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chapter 7'),backgroundColor: Colors.grey[300],),
       body: const Center( // จัดกึ่งกลาง ColorChanger
        child: ColorChanger(), // ใช้วิดเจ็ตใหม่
      ),

      floatingActionButton: ElevatedButton(
        onPressed:(){
          setState((){_counter++;});
          print('$_counter');
          },
         child: Icon(Icons.add)),
    );
  }
}