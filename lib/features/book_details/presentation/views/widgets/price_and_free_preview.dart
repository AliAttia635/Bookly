import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PriceAndFreePreveiw extends StatelessWidget {
  const PriceAndFreePreveiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
            text: "19.99 \$",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
          CustomButton(
            text: "free preview",
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
