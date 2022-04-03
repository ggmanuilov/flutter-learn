import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_demo/constants.dart';
import 'package:shop_demo/models/Product.dart';
import 'package:shop_demo/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    required Key key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0, // ???
        leading: IconButton(
          onPressed: () {
            // Go to back screen!
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/back.svg"),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/search.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/cart.svg")),
          const SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Body(product: product,)
    );
  }
}
