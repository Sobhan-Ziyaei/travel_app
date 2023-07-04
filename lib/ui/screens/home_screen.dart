import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/travel.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 1.9,
                  color: Colors.white,
                ),
                Container(
                  height: size.height / 2.1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: DecorationImage(
                        image: AssetImage(travelList[_selectedImage].image),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(116, 242, 242, 242),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(CupertinoIcons.arrow_left),
                        ),
                        const Spacer(),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(116, 242, 242, 242),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(CupertinoIcons.heart),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 16,
                  child: SizedBox(
                    width: 75,
                    height: double.maxFinite,
                    child: ListView.builder(
                      itemCount: travelList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedImage = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    width: _selectedImage == index ? 70 : 55,
                                    height: _selectedImage == index ? 70 : 55,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          travelList[index].image,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      border: Border.all(
                                          color: _selectedImage == index
                                              ? Colors.red
                                              : Colors.white,
                                          width: 2.0),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 300),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: size.width / 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travelList[_selectedImage].name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            travelList[_selectedImage].location,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            travelList[_selectedImage].name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          side: BorderSide(
                              width: 2, color: Color.fromARGB(84, 0, 0, 0)),
                        ),
                        child: SizedBox(
                          width: 85,
                          height: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Distance',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                  "${travelList[_selectedImage].distance} Km "),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          side: BorderSide(
                              width: 2, color: Color.fromARGB(84, 0, 0, 0)),
                        ),
                        child: SizedBox(
                          width: 85,
                          height: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Temp',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text("${travelList[_selectedImage].temp}° C "),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          side: BorderSide(
                              width: 2, color: Color.fromARGB(84, 0, 0, 0)),
                        ),
                        child: SizedBox(
                          width: 85,
                          height: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Rating',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(travelList[_selectedImage].rating),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Description'),
                        const SizedBox(
                          height: 10,
                        ),
                        ExpandableText(
                          travelList[_selectedImage].discription,
                          expandText: 'read more',
                          collapseText: 'collapse',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Total  Price',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${travelList[_selectedImage].price} \$",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
