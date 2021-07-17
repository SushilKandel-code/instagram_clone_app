import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Icon? icon;
  final double? horizontalIconSpace;
  final EdgeInsets? padding;

  const ButtonDesign({
    Key? key,
    required this.title,
    required this.onPressed,
    this.horizontalIconSpace = 4,
    this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xff3897F0)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          padding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? SizedBox.shrink(),
          (icon != null)
              ? SizedBox(
                  width: horizontalIconSpace,
                )
              : SizedBox.shrink(),
          Text(title!),
        ],
      ),
    );
  }
}
