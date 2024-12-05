import 'package:bookly_app/core/constants/routes/routes.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          // color: Colors.red,
          child: SizedBox(
            // CrossAxisAlignment.start بتعمل نفس شغل ال
            height: MediaQuery.of(context).size.height * .2,
            child: const Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookImage(
                  imageUrl:
                      'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/457367216_1129441098538794_3374373838008407674_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFxwpM5TwsKW0L5_rZQHID2ScYZBUFxgr1JxhkFQXGCvZI3_yPsJ_eatld9xoKfQpVbAIIpkJaI9dVZ5djdYRO8&_nc_ohc=wA-J7Iv9xl4Q7kNvgFh92Xc&_nc_zt=23&_nc_ht=scontent.fcai20-6.fna&_nc_gid=ALAJoi5yuMzXdo03QkC0JC0&oh=00_AYAAlbnxGtHLimI38I7nsRfuCS2_UI8OCDO6m9Wj4Vt8tw&oe=67576DFE',
                ),
                BestSellerDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
