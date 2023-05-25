import 'package:flutter/material.dart';
import 'package:shop/feature/cart/widget/remove_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CartPageItem();
      },
    );
  }
}

class CartPageItem extends StatefulWidget {
  const CartPageItem({super.key});

  @override
  State<CartPageItem> createState() => _CartPageItemState();
}

class _CartPageItemState extends State<CartPageItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: SizedBox(
        height: 120,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.network(
                  "https://m.media-amazon.com/images/I/71VjM5LOeYL._AC_UL1500_.jpg",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("BIDEN Mens Watches"),
                  const Text("\$199"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        color: Colors.grey[300],
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: count > 1
                                    ? () {
                                        setState(() {
                                          count--;
                                        });
                                      }
                                    : null,
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                              Text(
                                "$count",
                                style: TextStyle(fontSize: 18),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      RemoveButton(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
