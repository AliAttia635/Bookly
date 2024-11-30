import 'package:bookly_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class PriceAndFreePreveiw extends StatelessWidget {
  const PriceAndFreePreveiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          width: MediaQuery.of(context).size.width * .41,
          height: 45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "19,99 \$",
              textAlign: TextAlign.center,
              style: Styles.textStyle18.copyWith(color: Colors.black),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          width: MediaQuery.of(context).size.width * .41,
          height: 45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "free preview",
              textAlign: TextAlign.center,
              style: Styles.textStyle18,
            ),
          ),
        ),
      ],
    );
  }
}
