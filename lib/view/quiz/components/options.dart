import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../controllers/question_controller.dart';

class Options extends StatelessWidget {
  Options({
    super.key,
    required this.text,
    this.index = 0,
    this.press,
  });

  final String text;
  final int index;
  final VoidCallback? press;
  final QuestionController controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      builder: (controller) {
        Color getColor() {
          if (controller.isAnswered) {
            if (controller.correctAns == index) {
              return kGreenColor;
            } else if (controller.correctAns != index &&
                index == controller.selectedAns) {
              return kRedColor;
            }
          }
          return kGrayColor;
        }

        Icon getIcon() {
          if (controller.isAnswered) {
            if (controller.correctAns == index) {
              return const Icon(Icons.done);
            } else {
              return const Icon(Icons.close);
            }
          } else {
            return const Icon(Icons.close);
          }
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.only(top: kDefaultPadding),
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                border: Border.all(color: getColor()),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${index + 1} . $text',
                  style: TextStyle(fontSize: 16, color: getColor()),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: getColor() == kGrayColor
                          ? Colors.transparent
                          : getColor(),
                      border: Border.all(color: getColor()),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: getIcon(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
