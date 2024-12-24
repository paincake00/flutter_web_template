import 'package:flutter/material.dart';
import 'package:tested_web_app/widgets/call_to_action/call_to_action.dart';
import 'package:tested_web_app/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
          CallToAction(title: 'Join Course'),
        ],
      ),
    );
  }
}
