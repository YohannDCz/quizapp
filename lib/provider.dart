import 'package:flutter/material.dart';
import 'package:quizapp/shared/models.dart';

class QuizState with ChangeNotifier {
  double _progress = 0;
  Option? _selected;
  int _score = 0;

  final PageController controller = PageController();

  double get progress => _progress;
  Option? get selected => _selected;
  int get score => _score;

  set progress(double newValue) {
    _progress = newValue;
    Future.microtask(() => notifyListeners());
  }

  set selected(Option? newValue) {
    _selected = newValue;
    Future.microtask(() => notifyListeners());
  }

  set score(int newValue) {
    _score = newValue;
    Future.microtask(() => notifyListeners());
  }

  void resetScore() {
    _score = 0;
    notifyListeners();
  }

  void nextPage() async {
    await controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void previousPage() async {
    await controller.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void reset() {
    _progress = 0;
    _selected = null;
    score = 0;
    controller.jumpToPage(0);
    notifyListeners();
  }
}
