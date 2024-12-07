import 'package:bookly_app/core/shared_widgets/custom_app_bar.dart';
import 'package:bookly_app/core/themes/color_app.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.kPrimaryColor,
        title: CustomAppBar(
          appBarWidget: IconButton(
            icon: const Icon(
              FontAwesomeIcons.xmark,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          icon: const Icon(FontAwesomeIcons.cartShopping),
          onPressed: () {},
        ),
        automaticallyImplyLeading: false,
      ),
      body: BookDetailsBody(
        bookModel: bookModel,
      ),
    );
  }
}
