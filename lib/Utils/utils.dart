import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
    required this.ima1,
    required this.ima2,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
  });

  final String ima1;
  final String ima2;
  final String s1;
  final String s2;
  final String s3;
  final String s4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(i: ima1, s: s1, se: s2),
        const SizedBox(width: 10),
        Card(i: ima2, s: s3, se: s4),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.i,
    required this.s,
    required this.se,
  });

  static const l = 13.0;
  final String i;
  final String s;
  final String se;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          width: MediaQuery.of(context).size.width * 0.44,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 210, 209, 209),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0)
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              width: MediaQuery.of(context).size.width * 0.44,
              height: MediaQuery.of(context).size.height * 0.26,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$i'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: l, top: 3),
              child: Text(
                '$s',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: l, top: 3),
              child: Text(
                '$se',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
