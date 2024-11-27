import 'package:bookly_app/core/themes/color_app.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomAppBar(),
        ),
        backgroundColor: ColorApp.kPrimaryColor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
