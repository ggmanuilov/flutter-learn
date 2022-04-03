import 'package:flutter/material.dart';
import 'package:shop_demo/models/Product.dart';
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
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
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
