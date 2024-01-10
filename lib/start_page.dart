import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key, required this.callback});
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/quiz.png", color: Colors.blueAccent),
          const SizedBox(height: 10),
          const Text(
            "Learn Flutter the only way!!",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: () => callback(),
            label: const Text("Start Quiz",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
