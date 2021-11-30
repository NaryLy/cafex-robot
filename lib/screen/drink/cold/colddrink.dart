// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:desktop_cafe/consts/config_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColdDrink extends StatefulWidget {
  const ColdDrink({
    Key? key,
  }) : super(key: key);

  @override
  State<ColdDrink> createState() => _ColdDrinkState();
}

class _ColdDrinkState extends State<ColdDrink> {
  @override
  Widget build(BuildContext context) {
    final List<Map> cafe = [
      {
        "id": 0,
        "name": " Iced Americano",
        "description":
            "Coffee",
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
      {
        "id": 1,
        "name": 'Iced Latte',
        "description": 'Iced Coffee ',
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
      {
        "id": 2,
        "name": 'Macchiato',
        "description": 'Iced Coffee Product Espresso',
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
      {
        "id": 3,
        "name": 'Long Black',
        "description": 'Iced Coffee Product Espresso',
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
      {
        "id": 4,
        "name": 'Americano',
        "description": 'Iced Coffee Product Espresso',
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
      {
        "id": 5,
        "name": 'Mocha',
        "description": 'Iced Coffee Product Espresso',
        'imgae':
            "https://www.coffeeisland.gr/blog/wp-content/uploads/2021/06/FREDDOESPRESSO.jpg",
      },
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: cafe.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 2,
            vertical: kPadding,
          ),
          child: TextButton(
            onPressed: () => orderTap(context, cafe, index),
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
                    child: Hero(
                      tag: cafe[index]["id"],
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${cafe[index]["name"]}",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cafe[index]["description"],
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

Future<Object?> orderTap(
  BuildContext context,
  List<Map<dynamic, dynamic>> cafe,
  int index,
) {
  return showGeneralDialog(
    barrierLabel: "Cafe",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.2),
    transitionDuration: const Duration(milliseconds: 600),
    context: context,
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(
          begin: const Offset(0, 1),
          end: const Offset(0, 0),
        ).animate(anim),
        child: child,
      );
    },
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          height: 600,
          width: 1000,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerSide(cafe, index, context),
              bottomSide(cafe, index),
            ],
          ),
        ),
      );
    },
  );
}

Padding headerSide(
  List<Map<dynamic, dynamic>> cafe,
  int index,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: kPadding / 2,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: kPadding,
        ),
        Text(
          "${cafe[index]["name"]}",
          style: GoogleFonts.quicksand(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(
          width: kPadding,
        ),
        Text(
          cafe[index]["description"],
          style: GoogleFonts.quicksand(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.cancel,
                size: 30,
                color: Colors.lightBlue[600],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: kPadding,
        ),
      ],
    ),
  );
}

Expanded bottomSide(
  List<Map<dynamic, dynamic>> cafe,
  int index,
) {
  return Expanded(
    child: Row(
      children: [
        leftSide(),
        rightSidie(cafe, index),
      ],
    ),
  );
}

Expanded leftSide() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(
        kPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
  );
}

rightSidie(
  List<Map<dynamic, dynamic>> cafe,
  int index,
) {
  return Padding(
    padding: const EdgeInsets.all(
      kPadding,
    ),
    child: SizedBox(
      width: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListSugarButton(cafe: cafe, index: index),
          ListIceButton(cafe: cafe, index: index),
          ListCupButton(cafe: cafe, index: index),
          const OrderButton()
        ],
      ),
    ),
  );
}

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kPadding,
      ),
      child: TextButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.amberAccent,
          shadowColor: Colors.lightBlue[600],
          backgroundColor: Colors.lightBlue[600],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(gborder),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(kPadding / 2),
          child: Text(
            "Order",
            style: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListSugarButton extends StatelessWidget {
  const ListSugarButton({
    Key? key,
    required this.cafe,
    required this.index,
  }) : super(key: key);

  final List<Map> cafe;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          "Pick Sugar Level",
          style: GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            LevelButton(level: '0'),
            LevelButton(level: '25'),
            LevelButton(level: '50'),
            LevelButton(level: '75'),
            LevelButton(level: '100'),
          ],
        ),
      ],
    );
  }
}

class ListIceButton extends StatelessWidget {
  const ListIceButton({
    Key? key,
    required this.cafe,
    required this.index,
  }) : super(key: key);

  final List<Map> cafe;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          "Pick Ice Level",
          style: GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            LevelButton(level: 'Less Ice'),
            LevelButton(level: 'Normal Ice'),
            LevelButton(level: 'More Ice'),
          ],
        ),
      ],
    );
  }
}

class ListCupButton extends StatelessWidget {
  const ListCupButton({
    Key? key,
    required this.cafe,
    required this.index,
  }) : super(key: key);

  final List<Map> cafe;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          "Pick Cup Level",
          style: GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            LevelButton(level: 'Small'),
            LevelButton(level: 'Medium'),
          ],
        ),
      ],
    );
  }
}

class LevelButton extends StatelessWidget {
  LevelButton({
    Key? key,
    required this.level,
  }) : super(key: key);

  final String level;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kPadding * 1.5),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: Colors.grey,
          shadowColor: Colors.grey,
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(gborder),
          ),
        ),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding / 2),
              child: Text(
                level,
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
