import 'package:ecommerceapp/data.dart';
import 'package:ecommerceapp/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool canAddToCart = !Provider.of<CartProvider>(context).isItemAdded(item);

    return Card(
      elevation: 3,
      child: Column(
        children: [
          Expanded(child:  Image.network(item.image),),
          Text(
            item.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            '${item.price}',
            style: Theme.of(context).textTheme.caption,
          ),
          IconButton(onPressed: canAddToCart ? (){
            Provider.of<CartProvider>(context, listen: false).addItem(item);
          } : null, icon: const Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
