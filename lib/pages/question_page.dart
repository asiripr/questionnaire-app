import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionnaire/models/question_model.dart';
import 'package:questionnaire/pages/summary_page.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final questionModel = Provider.of<QuestionModel>(context);
    final question = questionModel.questions[questionModel.currentPage];

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${questionModel.currentPage+1}'),
      ),
      body: Column(
        children: [
          Text(question.question),
          TextField(
            onChanged: (value) {
              questionModel.updateAnswer(questionModel.currentPage, value);
            },
          ),
          LinearProgressIndicator(
            value: (questionModel.currentPage+1)/questionModel.questions.length,
          ),
          ElevatedButton(onPressed: (){
            if(questionModel.currentPage<questionModel.questions.length-1){
              questionModel.nextPage();
            }
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SummaryPage()));
            }
          }, child: Text("Next"))
        ],
      ),
    );
  }
}