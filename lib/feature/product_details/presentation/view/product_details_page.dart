import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/feature/home/data/models/products/products.dart';

@RoutePage()
class ProductDetailsPage extends StatelessWidget {
  final Products product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 50),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: const Text(
                      "Product Details",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            child: Text(
              product.title!,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                FontAwesomeIcons.solidStar,
                color: Color(0xffFFD700),
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "${product.rating!.rate}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                product.image!,
                height: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                " \$ ${product.price}",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            product.category!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.description!,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Icon(FontAwesomeIcons.minus)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("1"),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(FontAwesomeIcons.plus))
                      ]),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("Add to Wishlist"))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Add to Cart"))),
          //     const SizedBox(
          // height: 30,
          //     ),
        ]),
      ),
    );
  }
}
