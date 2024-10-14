import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  // Dynamic porque será tipo Color y también usará[]
  final dynamic donutColor;
  final String imageName;
  // Valor fijo para border circular
  final double borderRadius = 24;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName, required donustFlavor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            // Donut Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borderRadius),
                            bottomLeft: Radius.circular(borderRadius))),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$donutPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: donutColor[800]),
                    )),
              ],
            ),
            // Donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Image.asset(imageName),
            ),
            // Donut Flavor Text
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                donutFlavor,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Dunkin´s',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
