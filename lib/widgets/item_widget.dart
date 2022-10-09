import 'package:flutter/material.dart';
import 'package:myapp/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
