import 'package:flutter/material.dart';
import 'package:tested_web_app/widgets/call_to_action/call_to_action.dart';
import 'package:tested_web_app/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction(title: 'Join Course'),
          ),
        ),
      ],
    );
  }
}
