import 'package:flutter/material.dart';
import 'package:weather_application/theme/app_colors.dart';

class ScaffoldGradient extends StatelessWidget {
  const ScaffoldGradient({
    this.appBar,
    this.body,
    super.key,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.3,
            0.7,
          ],
          colors: [
            AppColors.whiteGradient,
            AppColors.orangeGradient,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
