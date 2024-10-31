import 'package:e_commerce_app/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: index == currentIndex
                    ? Color(0xff17223B)
                    : ColorConstants.GREY1,
              ),
              height: 10,
              width: index == currentIndex ? 40 : 10,
            ),
        separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
        itemCount: 3);
  }
}
