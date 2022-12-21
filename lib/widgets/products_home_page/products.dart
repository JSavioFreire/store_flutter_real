import 'package:flutter/material.dart';
import 'package:store_flutter_real/widgets/bt_add_cart/bt_add_cart.dart';

class Products extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String price;
  final String category;
  const Products(
      this.title, this.image, this.description, this.price, this.category,
      {super.key});

  @override
  Widget build(BuildContext context) {
    String subDescription = description.substring(0, 50);
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/products', arguments: {
          'title': title,
          'price': price,
          'description': description,
          'image': image,
          'category': category
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 400,
          child: Card(
            color: Colors.white70,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        image,
                      )),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$subDescription ...',
                    style: const TextStyle(color: Colors.black45),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const BtAddCart(),
                      Text(
                        'R\$ $price',
                        style:
                            const TextStyle(fontSize: 25, color: Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
