class QuizeQuestions {
  const QuizeQuestions(
    this.text,
    this.answers,
  );
  final String text;
  final List<String> answers;

  List<String> getShuffuledAns() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
