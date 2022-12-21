import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:store_flutter_real/controllers/products_controller.dart';

class Carousel extends StatelessWidget {
  final String image;
  final String image2;
  final String image3;
  Carousel(this.image,this.image2,this.image3, {super.key});
  final ProductsController controller = ProductsController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0,
       autoPlay: true,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,),
      items: [
        image,
        image2,
        image3
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width * 0.7,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Image.network(
                  i,
                ));
          },
        );
      }).toList(),
    );
  }
}
