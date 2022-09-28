import 'package:fashionstore/Utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/dp.jpg'),
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Hi,Sam !',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color.fromARGB(255, 14, 14, 14),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 38),

                  //DISPLAY TEXT
                  const Text(
                    'Find the best',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'clothes for you',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //SEARCH BAR
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 4, top: 1, bottom: 1, right: 4),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.84,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 210, 209, 209),
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0,
                            ),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor:
                              const Color.fromARGB(255, 133, 133, 133),
                          suffixIcon: Image.asset(
                            'assets/images/dotss.png',
                            height: 1,
                            width: 6,
                          ),
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 133, 133, 133),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // SCROLL VIEW

                  const ShopCard(
                    ima1: 'assets/images/6.jpg',
                    ima2: 'assets/images/2.jpg',
                    s1: 'Puma Sneakers',
                    s2: '₹ 3999',
                    s3: 'Dungarees',
                    s4: '₹ 1149',
                  ),
                  const SizedBox(height: 15),
                  const ShopCard(
                    ima1: 'assets/images/5.jpg',
                    ima2: 'assets/images/8.jpg',
                    s1: 'Denim Jacket',
                    s2: '₹ 2499',
                    s3: 'Sports Wear',
                    s4: '₹ 699',
                  ),
                  const SizedBox(height: 15),
                  const ShopCard(
                    ima1: 'assets/images/3.jpg',
                    ima2: 'assets/images/9.jpg',
                    s1: 'Denim Shirt Blue',
                    s2: '₹ 899',
                    s3: 'Formal\'s Men',
                    s4: '₹ 4499',
                  ),
                  const SizedBox(height: 15),
                  const ShopCard(
                    ima1: 'assets/images/4.jpg',
                    ima2: 'assets/images/10.jpg',
                    s1: 'Men Solid Denim',
                    s2: '₹ 1299',
                    s3: 'Formal\'s Men',
                    s4: '₹ 2560',
                  ),
                  const SizedBox(height: 15),
                  const ShopCard(
                    ima1: 'assets/images/11.jpg',
                    ima2: 'assets/images/7.jpg',
                    s1: 'Formal\'s Women',
                    s2: '₹ 3149',
                    s3: 'Puma SportsWear',
                    s4: '₹ 1499',
                  ),
                  const SizedBox(height: 28),

                  Center(
                    child: Text(
                      'New collection arriving\n      soon.....❤😍😍',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
