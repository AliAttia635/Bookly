import 'package:bookly_app/features/books_search/presentation/manager/serach_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
  });
  var bookName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Opacity(
            opacity: .7,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
          onPressed: () {},
        ),
        hintText: "search book",
        focusedBorder: buildOutlineInuptBorder(),
        enabledBorder: buildOutlineInuptBorder(),
      ),
      onChanged: (data) {
        BlocProvider.of<SearchBooksCubit>(context).serachBooks(bookName: data);
      },
    );
  }

  OutlineInputBorder buildOutlineInuptBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.white));
  }
}
