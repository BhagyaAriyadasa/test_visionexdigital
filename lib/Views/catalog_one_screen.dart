import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_visionexdigital/Views/catalog_two_screen.dart';

class CatalogOneScreen extends StatelessWidget {
  CatalogOneScreen({super.key});

  final List<Map<String, dynamic>> data = [
    {
      'image': 'assets/images/house image 1.png',
      'text': "\$ 580",
      'title': "Rent 3 room",
      'description': "Apartment in the center in the city"
    },
    {
      'image': 'assets/images/house image 2.jpg',
      'text': "\$ 750",
      'title': "Apartment",
      'description': "4 rooms"
    },
    {
      'image': 'assets/images/house image 4.jpg',
      'text': "\$ 900",
      'title': "Apartment",
      'description': "center"
    },
    {
      'image': 'assets/images/house image 1.png',
      'text': "\$ 580",
      'title': "Rent 3 room",
      'description': "Apartment in the center"
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(width * 0.35),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color(0xFFF0F298),
                elevation: 0,
                flexibleSpace: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: width * 0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.menu),
                            color: Colors.grey.shade800,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Hi, Stanislav",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade400),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "S",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      )))
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Transform.rotate(
                                  angle: 3.1416 / 2,
                                  child: const Icon(Icons.search,
                                      color: Colors.grey)),
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CatalogTwoScreen()));
                      },
                      child: const Text("View all"))
                ],
              ),
            ),
            SizedBox(
              height: width * 0.4,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        data.length,
                        (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Container(
                                    width: width * 0.25,
                                    height: width * 0.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(data[index]['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                20), // Rounded corners
                                          ),
                                          child: Text(
                                            data[index]['text'],
                                            style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 18.0, top: 8),
                                  child: Text(
                                    data[index]['title'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: SizedBox(
                                      width: width * 0.25,
                                      child: Text(
                                        data[index]['description'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Offers",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CatalogTwoScreen()));
                      },
                      child: const Text("View all"))
                ],
              ),
            ),
            SizedBox(
              height: width * 0.5,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16.0),
                      child: Container(
                        width: width * 0.95,
                        height: width * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/house image 1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.favorite_border,color: Colors.white,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        20), // Rounded corners
                                  ),
                                  child: Text(
                                    '\$ 570',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 8, right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apartment 3 rooms',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              child: Row(
                            children: [
                              Icon(
                                Icons.star_border,
                                color: Color(0xFF37AD5F),
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("(29 reviews)")
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
