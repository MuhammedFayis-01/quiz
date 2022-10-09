import 'package:flutter/material.dart';
import 'package:improvequiz/question.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Allok(),
    );
  }
}

class Allok extends StatefulWidget {
  @override
  State<Allok> createState() => _AllokState();
}

class _AllokState extends State<Allok> {
  List<Icon> icon = [];

  int countnum = 0;
  List<Question> qa = [
    Question(q: "cow eat chicken", a: false),
    Question(q: "cat is very larger than elephent", a: false),
    Question(q: "elephent is big animal", a: true),
     Question(q: "ten +one is >two point two", a: false),
    Question(q: "ant is very larger than elephent", a: false),
    Question(q: "flutter is easy to use", a: true),

  ];

  // List<String> qstn = [
  //   "cow eat chicken",
  //   "cat is very larger than elephent",
  //   "elephent is big animal"
  // ];
  // List<bool> booo = [false, false, true];

  Question q = Question(q: "cow eat chicken", a: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 6,
          child: Container(
            child: Center(
              child: Text(qa[countnum].questionText!),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                bool correctAnswer = qa[countnum].questionAnswer!;
                if (correctAnswer == true) {
                  print("ok mayre correct aaa nii");
                } else {
                  print("poi   pani nok bhai");
                }
                setState(() {
                  countnum++;
                  icon.add(Icon(Icons.check));
                });
              },
              child: Container(
                width: double.infinity,
                child: Center(child: Text("TRUE")),
                color: Colors.green,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                bool correctAnswer = qa[countnum].questionAnswer!;
                if (correctAnswer == false) {
                  // print("ok mayre correct aaa nii");
                } else {
                  // print("poi   pani nok bhai");
                }
                setState(() {
                  countnum++;
                  icon.add(Icon(Icons.close));
                });
              },
              child: Container(
                width: double.infinity,
                child: Center(child: Text("FALSE")),
                color: Colors.red,
              ),
            ),
          ),
        ),
        Row(children: icon)
      ]),
    );
  }
}
