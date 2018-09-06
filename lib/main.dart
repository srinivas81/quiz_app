import 'package:flutter/material.dart';
import './quiz.dart';

void main(){
  runApp(
      new MaterialApp(
        home: new AnimalQuiz(),
      )
  );
}

class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multiple Choice Quiz"),
        backgroundColor: Colors.blue,
      ),


      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: () {startQuiz("Animal");},
                child: new Text("Animal Quiz",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(20.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: () {startQuiz("Math");},
                child: new Text("Math Quiz",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),
    );
  }

  void startQuiz(String type){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Quiz(type)));
    });
  }
}
