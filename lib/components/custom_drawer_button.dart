import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({
    this.onPressed,
    super.key,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        'assets/icons/drawer.svg',
        height: 30,
      ),
    );
  }
}
