import 'package:flutter/material.dart';
import 'package:flutter_application_8/const/constcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData icon = Icons.favorite_border;
  Color colorr = Colors.black;
  bool heart = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              // color: Colors.black,
              width: width,
              height: height,
              child: Image.asset('assets/images/img4.png'),
            ),
            Positioned(
              // padding: const EdgeInsets.all(0.0),
              top: 170,
              left: 25,
              child: Container(
                width: width * 0.90,
                height: height * 0.32,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(56, 152, 151, 151),
                        offset: Offset(1, 1),
                        blurRadius: 22)
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/img5.jpeg'),
                              ),
                              Text(
                                '\t\tTrinity\t\t',
                                style: color.copyWith(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset('assets/images/img2.png'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Image.asset('assets/images/img6.png'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          15.pw,
                          const SizedBox(
                            height: 120,
                            child: VerticalDivider(
                              color: Colors.black38,
                              thickness: 1,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Let\'s start! Welcome to Thread 🔥',
                                style: color.copyWith(fontSize: 19),
                              ),
                              SizedBox(
                                width: width * 0.77,
                                child: Text(
                                  'The vision for Thread is to create open and friendly to public space for conversion ',
                                  style: color.copyWith(fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                        child: Row(
                          children: [
                            60.pw,
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (heart == true) {
                                      colorr = Colors.red;
                                      icon = Icons.favorite;
                                      heart = false;
                                    } else {
                                      colorr = Colors.black;
                                      icon = Icons.favorite_border;
                                      heart = true;
                                    }
                                  });
                                },
                                child: Icon(
                                  icon,
                                  size: 35,
                                  color: colorr,
                                )),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13.0),
                                child: Image.asset(
                                  'assets/images/img7.png',
                                  width: 35,
                                ),
                              ),
                            ),
                            InkWell(
                                onTap: () {},
                                child: Image.asset('assets/images/img8.png')),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13.0),
                                child: Image.asset('assets/images/img9.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 27,
                    left: 7,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/images/p2.jpeg'),
                    ),
                  ),
                  const Positioned(
                    left: 7,
                    bottom: 8,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundImage: AssetImage('assets/images/img5.jpeg'),
                    ),
                  ),
                  const Positioned(
                    bottom: 30,
                    left: 40,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/p3.jpeg'),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
              bottom: 275,
              left: 125,
              child: InkWell(
                onTap: () {},
                child: const Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Via Thread',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 20,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 228, 224, 224),
                    child: Icon(Icons.arrow_back)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
