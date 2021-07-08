import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score App',
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: reset,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text("The given Score is displayed below: ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 125,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Increase'),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                child: Text('Decreased'),
                onPressed: decreaseNumber,
              )
            ],
          ),
          SizedBox(
            height: 340,
          ),
          Text(
            "Copyright @ Aryan Shakya 2020",
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
