import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import '../../controllers/question_controller.dart';
import 'components/question_card.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});
  final QuestionController _controller = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(children: [
            SvgPicture.asset(
              "assets/icons/bg.svg",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: PageView.builder(
                physics:const NeverScrollableScrollPhysics(),
                controller: _controller.pageController,
                itemCount: _controller.questions.length,
                itemBuilder: (context, index) {
                  return QuestionCard(
                    question: _controller.questions[index],
                  );
                },
              ),
            )
          ])),
    );
  }
}
