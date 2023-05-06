import 'package:flutter/material.dart';
import 'package:flutter_question_answer/Q1_SaveFile/FileStorage.dart';
import 'package:flutter_question_answer/Q1_SaveFile/datafile.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  "Save File",
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save File"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Text("${myList.toString()}",)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          FileStorage.writeCounter(myList.toString(), "CodeAzamBaloch.txt");
        },
          tooltip: 'on Pessed to Save file ',
        child: const Icon(Icons.save)
      ),
    );
  }
}

