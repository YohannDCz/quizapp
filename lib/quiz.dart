import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/assets.dart';
import 'package:quizapp/map.dart';
import 'package:quizapp/provider.dart';
import 'package:quizapp/shared/models.dart';
import 'package:quizapp/shared/progress_bar.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.quizId});
  final String quizId;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  initState() {
    super.initState();
    Provider.of<QuizState>(context, listen: false).score = 0;
  }

  @override
  Widget build(BuildContext context) {
    var score = Provider.of<QuizState>(context).score;

    return ChangeNotifierProvider(
      create: (_) => QuizState(),
      child: Builder(
        builder: (context) {
          var state = Provider.of<QuizState>(context);
          var quiz = quizzes.firstWhere((quiz) => quiz.id == widget.quizId);

          return Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("$score/100", style: Theme.of(context).textTheme.headlineMedium),
                )
              ],
              title: AnimatedProgressbar(value: state.progress),
              leading: IconButton(
                  icon: const Icon(FontAwesomeIcons.xmark),
                  onPressed: () {
                    Provider.of<QuizState>(context, listen: false).resetScore();
                    Navigator.pop(context);
                  }),
            ),
            body: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: state.controller,
              onPageChanged: (int idx) => state.progress = (idx / (quiz.questions.length + 1)),
              itemBuilder: (BuildContext context, int idx) {
                if (idx == 0) {
                  return StartPage(quiz: quiz);
                } else if (idx == quiz.questions.length + 1) {
                  return CongratsPage(quiz: quiz, score: score);
                } else {
                  return QuestionPage(question: quiz.questions[idx - 1]);
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class StartPage extends StatelessWidget {
  final Quiz quiz;
  const StartPage({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink,
            ),
            child: Column(
              children: [
                Text(toBeginningOfSentenceCase(quiz.title) ?? "", style: Theme.of(context).textTheme.headlineLarge),
              ],
            ),
          ),
          const Divider(),
          Expanded(child: Text('${quiz.description}\nAttention une mauvaise réponse vous fera perdre 5 points, une bonne vous en fera gagner 10 !')),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: const TextStyle(color: Colors.white),
                ),
                onPressed: state.nextPage,
                label: const Text('Démarrer le Quiz!'),
                icon: const Icon(Icons.poll),
              )
            ],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CongratsPage extends StatelessWidget {
  final Quiz quiz;
  CongratsPage({super.key, required this.quiz, this.score});
  int? score;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Félicitations, vous avez complété le ${quiz.title} et vous avez gagné $score points !',
            textAlign: TextAlign.center,
          ),
          const Divider(),
          Image.asset('assets/congrats.gif'),
          const Divider(),
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            icon: const Icon(FontAwesomeIcons.check),
            label: const Text('D\'accord !'),
            onPressed: () {
              Provider.of<QuizState>(context, listen: false).score = 0;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MapScreen()),
                (route) => false,
              );
            },
          )
        ],
      ),
    );
  }
}

class QuestionPage extends StatelessWidget {
  final Question question;
  const QuestionPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Text(
              question.text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  question.shuffledOptions.map((opt) {
              return Container(
                height: 100,
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.black26,
                child: InkWell(
                  onTap: () {
                    state.selected = opt;
                    _bottomSheet(context, opt, state);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(state.selected == opt ? FontAwesomeIcons.circleCheck : FontAwesomeIcons.circle, size: 30),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 16),
                            child: Text(
                              opt.value,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  /// Bottom sheet shown when Question is answered
  _bottomSheet(BuildContext context, Option opt, QuizState state) {
    bool correct = opt.correct;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(correct ? 'Bon travail !' : 'Mauvaise réponse'),
              Text(
                opt.detail,
                style: const TextStyle(fontSize: 18, color: Colors.white54),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: correct ? Colors.green : Colors.red),
                child: Text(
                  correct ? 'Question suivante !' : 'Réessayer',
                  style: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  if (correct) {
                    Provider.of<QuizState>(context, listen: false).score += 10;
                    state.nextPage();
                  } else {
                    Provider.of<QuizState>(context, listen: false).score -= 5;
                  }
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
