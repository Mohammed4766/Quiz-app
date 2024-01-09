import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import '../../../controllers/question_controller.dart';
import '../../../model/question.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({super.key, required this.question});

  final Question question;
  final QuestionController _controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(question.question, style: const TextStyle(color: Colors.black)),
          const SizedBox(
            height: 10,
          ),
          ...List.generate(
              question.options.length,
              (index) => Options(
                    text: question.options[index],
                    index: index,
                    press: () => _controller.checkAns(question, index),
                  ))
        ],
      ),
    );
  }
}
