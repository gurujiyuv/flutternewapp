import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techstarter/new.dart';
import 'package:techstarter/testy.dart';

class level extends StatelessWidget{


  final n = TextEditingController();
  final dict = {
    1:"a",
    2:"b",
    3:"c",
    4:"d",
    5:"e",
    6:"f",
    7:"g",
    8:"h",
    9:"i",
    10:"j",
    11:"k",
    12:"l",
    13:"m",
    14:"n",
    15:"o",
    16:"p",
    17:"q",
    18:"r",
    19:"s",
    20:"t",
    21:"u",
    22:"v",
    23:"w",
    24:"x",
    25:"y",
    26:"z",
    27:"\'",
    28:"\"",


  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
                center: AlignmentDirectional(1,-1),
                startAngle: 1.7,
                endAngle: 3,
                colors: [Colors.deepPurple[400], Colors.lightBlueAccent]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
               // width: double.infinity,
                color: Colors.white,
                child: ListView(
                  //scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Center(
                            child: Text(
                              "We aim to help each student see their code visually, so they can start understanding all the concepts in coding. Lets see an example.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Nunito',

                              ),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Center(
                            child: Text(
                              "First we will ask the question - Lets print the statement hello",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Center(
                            child: Text(
                              "You can also look at our 2 tutorials on the 2 quick (1 which we created ourselves, the other is python and is much more strict with Caps lock and so on) languages that we use",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: TextField(

                                controller: n,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 13
                                ),
                                decoration: InputDecoration.collapsed(
                                  hintText: "Put you answer here",

                                ),

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 150,
                              color: Colors.blue,
                              child: FlatButton(
                                onPressed: (){
                                  final x = """print("hello")""";
                                  var h = "";
                                  var np  = [];
                                  for(int i = 0; i>= n.text.toString().length; i++ ){
                                    var p = n.text.toString()[i];
                                    print(p);
                                    testyAlert(context, p);
                                    var hpj = dict[p];
                                    print(hpj);
                                    testyAlert(context, hpj);
                                    np.add(hpj);
                                    h = h+ hpj.toString();
                                  }


                                  testyAlert(context, np.toString());




                                  //testyAlert(context, "${n.text.toString().toLowerCase()} + print(\"hello\")");
                                  if(n.text.toLowerCase() == "say hello" ||n.text.toString()== "print(\')"){
                                    testyAlert(context, "Hello \n\n Well done, you got it correct, thats how we can print out different statements to guide the user");
                                  }else{
                                    testyAlert(context, " Error \n\nUnlucky, maybe you want to try that again");
                                    //testyAlert(context, "print(\"hello\")");
                                  }
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontFamily: 'Nunito'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          color: Colors.grey[300],
                          thickness: 3,

                        ),
                        levell("Lets try print or say, the phrase \' I am 10 years old\'", ['print(\"hello\")', "say hello"], "https://techstarter.digital", "I am 10 years old, print(\"hello\")"),
                        levell("Lets try print or say, the phrase \' I am 10 years old\'", ['print(\"hello\")', "say hello"], "https://techstarter.digital", "I am 10 years old, print(\"hello\")")


                      ],
                    ),
                    //levell("Lets try print or say, the phrase \' I am 10 years old\'", ['print("hello")', "say hello"], "https://techstarter.digital", "I am 10 years old")

                  ],

                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
