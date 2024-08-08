import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/question_page.dart';
import 'models/question_model.dart';

void main() {
  runApp(const MainApp());
  // runApp(
  //   ChangeNotifierProvider(create: (context)=>QuestionModel),
  //   child: MaterialApp(
  //     home: QuestionPage(),
  //   )
  // );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>QuestionModel(),
      child: const MaterialApp(
        home: QuestionPage()
      ),
    );
  }
}
