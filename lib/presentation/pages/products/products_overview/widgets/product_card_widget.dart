import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      //color: product.color.getOrCrash(),
      //! For showcasing the effects of clipBehavior
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          // Router.navigator.pushNamed(
          //   Router.productFormPage,
          //   arguments: ProductFormPageArguments(editedProduct: product),
          // );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber[500],
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '${product.totalAmount.getOrCrash()}',
                ),
              ),
              const SizedBox(width: 10),
              Text(
                product.productName.getOrCrash(),
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CatagoryDisplay extends StatelessWidget {
  final CatagoryItem catagoryItem;

  const CatagoryDisplay({Key key, this.catagoryItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      // children: <Widget>[
      //   if (catagory.done)
      //     Icon(
      //       Icons.check_box,
      //       color: Theme.of(context).accentColor,
      //     ),
      //   if (!catagory.done)
      //     Icon(
      //       Icons.check_box_outline_blank,
      //       color: Theme.of(context).disabledColor,
      //     ),
      //   Text(catagory.name.getOrCrash()),
      // ],
    );
  }
}
