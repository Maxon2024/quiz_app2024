class QuestionsModels {
  QuestionsModels({
    required this.suroo,
    required this.joop,
  });

  final String? suroo;
  final bool? joop;
}

var a1 = QuestionsModels(suroo: 'Сен каарыйсынбы?', joop: true);

var a2 = QuestionsModels(suroo: 'Сен программисттике окуйсунбу?', joop: true);

var a3 = QuestionsModels(suroo: 'Сен олбойсунбу?', joop: false);

List answers = [a1, a2, a3];
