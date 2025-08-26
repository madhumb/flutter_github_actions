import 'package:flutter/material.dart';
import 'package:flutter_github_actions/app_values.dart';
import 'package:flutter_github_actions/env.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppValues.bgColor,
        title: Text(
          AppValues.title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppValues.onBgColor,
          ),
        ),
      ),
      backgroundColor: AppValues.bgColor.withOpacity(0.5),
      body: Center(
        child: Text(
          "key: ${Env.secretKey}\n"
          "url: ${Env.baseURL}",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppValues.onBgColor),
        ),
      ),
    );
  }
}
