import 'package:flutter/material.dart';
import 'package:shop_demo/constants.dart';
import 'package:shop_demo/models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Color"),
                    Row(
                      children: const [
                        ColorDot(
                          color: Color(0xFF356C95),
                          isSelected: true,
                        ),
                        ColorDot(
                          color: Color(0xFF659535),
                        ),
                        ColorDot(
                          color: Color(0xFF9809A8),
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: kTextColor),
                        children: [
                          TextSpan(text: "Size\n"),
                          TextSpan(
                              text: "${product.size} cm",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(fontWeight: FontWeight.bold))
                        ])))
          ],
        ),
      ],
    );
  }
}


class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
