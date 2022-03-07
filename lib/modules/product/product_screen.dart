import 'package:flutter/cupertino.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'product',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
