import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Icon> icon = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 5,
            child: Center(
                child: Text(
              '',
              style: TextStyle(
                fontSize: 33,
                color: Colors.black,
              ),
            )),
          ),
          Buttons(
            color: Colors.yellow,
            str: 'True',
            onpress: () {
              setState(() {
                icon.add(const Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 27,
                ));
              });
            },
          ),
          Buttons(
            color: Colors.pinkAccent,
            str: 'False',
            onpress: () {
              setState(() {
                icon.add(const Icon(
                  Icons.check,
                  color: Colors.pinkAccent,
                  size: 27,
                ));
              });
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.from(
                icon.map((icon) => icon).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  final Color color;
  final String str;
  final VoidCallback? onpress;

  const Buttons({
    super.key,
    required this.color,
    required this.str,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 33,
            ),
            minimumSize: const Size(400, 100),
            elevation: 39,
          ),
          onPressed: () {
            onpress!();
          },
          child: Text(
            str,
          ),
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final bool bools;

  Question(this.question, this.bools);
}

class ListQuestion {
  List<Question> question = [
    Question("Do you like to eat?", true),
    Question("", true),
  ];
}

class Question1 {
  final String ques;
  final bool bol;
  Question1(this.ques, this.bol);
}

class ListQuestion1 {
  int quess = 0;

  List<Question1> question1 = [
    Question1("Do you like to eat?", true),
    Question1("Do you like to drink?", true),
    Question1("Do you like to food?", true),
    Question1("how ", true),
  ];
  void func() {
    if (quess < question1.length - 1) {
      quess++;
    }
  }
}
