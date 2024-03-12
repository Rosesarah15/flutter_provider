import 'package:flutter/material.dart';
import 'package:flutter_provider/consts.dart';
import 'package:flutter_provider/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  _appBar() {
    return AppBar(
      title: const Text('Cart'),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(
      builder: (context, provider, _) {
        print('building ${provider.items.length}');
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.80,
              child: ListView.builder(
                  itemCount: provider.items.length,
                  itemBuilder: (context, index) {
                    Product product = provider.items[index];
                    return ListTile(
                      title: Text(product.name),
                      onLongPress: () {
                        provider.remove(product);
                      },
                    );
                  }),
            ),
            Text('Cart Total: \$${provider.getCartTotal()}')
          ],
        );
      },
    );
  }
}
