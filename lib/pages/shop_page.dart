import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SEARCH BAR
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            // padding:
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white70,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
        ),

        // SUBTITLE
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Greatness is not born, it is made!",
            style: TextStyle(color: Colors.black54, fontSize: 17),
          ),
        ),

        // HOT PICKS TITLE
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text("See more",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    fontSize: 16,
                  )),
            ],
          ),
        ),

        const SizedBox(height: 30),
        // HOT PICKS LIST
        SizedBox(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: "New Shoe",
                  description:
                      "Testing",
                  price: "Rs. 2000",
                  imagePath: 'lib/assets/images/nike_downshifter_12.png');
              return ShoeTile(shoe: shoe);
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 35),
          child: Divider(
            color: Colors.white,
            indent: 30,
            endIndent: 30,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
