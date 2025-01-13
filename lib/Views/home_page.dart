import 'package:flutter/material.dart';
import 'package:test_visionexdigital/Views/catalog_one_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> data = [
    {
      'color': const Color(0xFFF5E1C2),
      'icon': Icons.chair_outlined,
      'text': "Rent"
    },
    {
      'color': const Color(0xFFF0F298),
      'icon': Icons.calculate_outlined,
      'text': "Buy"
    },
    {
      'color': const Color(0xFFC6E7BE),
      'icon': Icons.sell_outlined,
      'text': "Sell"
    },
    {
      'color': const Color(0xFFF5E1C2),
      'icon': Icons.chair_outlined,
      'text': "Rent"
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/images/house image 1.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken))),
        ),
        Positioned(
            top: width * 0.15,
            left: width * 0.08,
            child: Text(
              "Homezes",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300,
                  fontSize: 25),
            )),
        Positioned(
            top: width * 0.15,
            right: width * 0.08,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: Colors.grey.shade300,
                ))),
        Positioned(
            top: width * 0.9,
            left: width * 0.35,
            child: Text(
              "Find the best \nplace for you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                  fontSize: 35),
            )),
        Padding(
          padding: EdgeInsets.only(top: width * 1.1),
          child: SizedBox(
            height: width * 0.3,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      data.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              width: width * 0.25,
                              height: width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: data[index]['color']),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(data[index]['icon']),
                                          color: Colors.black,
                                        )),
                                  ),
                                  Positioned(
                                    bottom: width * 0.02,
                                    left: width * 0.01,
                                    child: Text(
                                      data[index]['text'],
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: width * 1.4, left: 16, right: 16),
          child: SizedBox(
            width: width,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CatalogOneScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF37AD5F),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 20),
                )),
          ),
        )
      ]),
    );
  }
}
