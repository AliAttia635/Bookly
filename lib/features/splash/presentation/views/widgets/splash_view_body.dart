import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/constants/durations/duration.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initAnimationSliding();

    initNavigationTransition();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void initAnimationSliding() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void initNavigationTransition() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() {
        return const HomeView();
      }, transition: Transition.downToUp, duration: CustomDuration.k3Duration);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImages.logoImage),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}