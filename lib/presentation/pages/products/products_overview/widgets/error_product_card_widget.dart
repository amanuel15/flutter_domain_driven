import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:flutter/material.dart';

class ErrorProductCard extends StatelessWidget {
  final Product product;

  const ErrorProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid product, please contact support',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              product.failureOption.fold(() => '', (f) => f.toString()),
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}