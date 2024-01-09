class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

 const List sampleData = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Which platform(s) is Flutter suitable for developing applications.",
    "options": ['Android', 'web', 'iOS', 'All of the above'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "What programming language is used in Flutter?",
    "options": ['Dart', 'Swift', 'Java', 'C++'],
    "answer_index": 0,
  },
];
