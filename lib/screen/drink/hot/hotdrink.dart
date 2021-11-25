import 'package:desktop_cafe/consts/config_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotDrink extends StatelessWidget {
  const HotDrink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts = [
      {
        "id": 0,
        "name": "Espresso",
        "description": "Product Espresso",
      },
      {
        "id": 1,
        "name": 'Iced Coffee',
        "description": 'Iced Coffee',
      },
      {
        "id": 2,
        "name": 'Macchiato',
        "description": 'Iced Coffee',
      },
      {
        "id": 3,
        "name": 'Long Black',
        "description": 'Iced Coffee',
      },
      {
        "id": 4,
        "name": 'Americano',
        "description": 'Iced Coffee',
      },
      
      {
        "id": 6,
        "name": 'Green Tea',
        "description": 'Iced Coffee',
      },
    ];
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: myProducts.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 2,
            vertical: kPadding,
          ),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.grey,
              shadowColor: Colors.grey,
              backgroundColor: Colors.white12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(gborder),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${myProducts[index]["name"]}",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    myProducts[index]["description"],
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
