import 'package:flutter/material.dart';
import 'package:shop_demo/constants.dart';
import 'package:shop_demo/models/Product.dart';
import 'package:shop_demo/screens/details/components/color_and_size.dart';
import 'package:shop_demo/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_demo/screens/details/components/description.dart';
import 'package:shop_demo/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provide total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn()
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
