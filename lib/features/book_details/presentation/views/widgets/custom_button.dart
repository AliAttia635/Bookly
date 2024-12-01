import 'package:bookly_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final double? sizeFont;
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius,
      this.sizeFont});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontSize: sizeFont ??
                    18), // i could remove the ?? 18 and it will work because the fontsize attribute is nullable if i didnt give him the value in the constructor when i call the class it will take the fontSize value that is there in textStyle18
          ),
        ),
      ),
    );
  }
}
