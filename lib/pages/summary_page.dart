import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionnaire/models/question_model.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final questionModel = Provider.of<QuestionModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Summary"),),
      body: Column(
        children: [
          for(var question in questionModel.questions)
            ListTile(
              title: Text(question.question),
              subtitle: Text(question.answer),
            ),
            ElevatedButton(onPressed: (){
              // send data to firebase
            }, child: Text("Submit"))
          
        ],
      ),
    );
  }
}