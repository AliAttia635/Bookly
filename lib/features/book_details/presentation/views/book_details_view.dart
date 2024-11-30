import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/shared_widgets/custom_app_bar.dart';
import 'package:bookly_app/core/themes/color_app.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.kPrimaryColor,
        title: CustomAppBar(
          appBarWidget: Icon(
            FontAwesomeIcons.xmark,
            size: 30,
          ),
          icon: Icon(FontAwesomeIcons.cartShopping),
          onPressed: () {},
        ),
      ),
      body: BookDetailsBody(),
    );
  }
}
