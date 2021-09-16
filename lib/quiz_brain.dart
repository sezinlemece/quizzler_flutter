import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        q: '1. Varyemez Amca isimli çizgi film, külot giymiyor olması gerekçesiyle Finlandiya\'da yasaklanmıştır. ',
        a: true),
    Question(q: '2. Kelebekler ayaklarıyla tat alırlar.', a: true),
    Question(q: '3. Kangurular geri geri yürüyebilirler.', a: false),
    Question(
        q: '4. Karda gizlenmeye çalışan bir kutup ayısı, siyah burnunu pençesiyle kapatır.',
        a: true),
    Question(q: '5. Kirpi suda batar.', a: false),
    Question(q: '6. Filler zıplayabilir.', a: false),
    Question(q: '7. Karıncalar uyumaz.', a: true),
    Question(q: '8. Sümüklüböceklerin dört tane burnu vardır.', a: true),
    Question(q: '9. Kâğıt para pamuktan yapılır. ', a: true),
    Question(q: '10. Yılanlar duyabilir', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
