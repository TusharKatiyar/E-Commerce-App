import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodBageBody extends StatefulWidget {
  const FoodBageBody({Key? key}) : super(key: key);

  @override
  State<FoodBageBody> createState() => _FoodBageBodyState();
}

class _FoodBageBodyState extends State<FoodBageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }));
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/pasta.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                                size: 15,
                              )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "4.5"),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "1287"),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "comments")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
