import 'package:flutter/material.dart';
import 'package:shop_demo/constants.dart';
import 'package:shop_demo/models/Product.dart';
import 'package:shop_demo/screens/details/details_screen.dart';
import 'package:shop_demo/screens/home/components/categories.dart';
import 'package:shop_demo/screens/home/components/item-cart.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) => ItemCart(
                    product: products[index],
                    key: Key("${products[index].id}"),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[index],
                                    key: Key("${products[index].id}"),
                                  )));
                    })),
          ),
        ),
      ],
    );
  }
}
