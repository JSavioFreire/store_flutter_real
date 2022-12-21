import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String price;
  const Products(this.title, this.image, this.description, this.price,
      {super.key});

  @override
  Widget build(BuildContext context) {
    String subDescription = description.substring(0, 50);
    return Container(
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
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Add to Cart')),
                    Text(
                      price,
                      style: const TextStyle(fontSize: 25, color: Colors.green),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
