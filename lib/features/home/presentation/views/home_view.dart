import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/themes/color_app.dart';
import 'package:bookly_app/core/shared_widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomAppBar(
            appBarWidget: Image.asset(
              AssetsImages.logoImage,
              width: 80,
              height: 80,
            ),
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: ColorApp.kPrimaryColor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
