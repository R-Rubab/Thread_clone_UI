import 'package:flutter/material.dart';
import 'package:flutter_application_8/const/constcolor.dart';
import 'package:flutter_application_8/screens/homepage.dart';

class MyHomePages extends StatelessWidget {
  const MyHomePages({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 36, 31, 31),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/img1.png',
              height: height * 0.76,
              width: width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Stack(children: [
                  Container(
                    width: width,
                    height: height * 0.13,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.13),
                        // color: const Color.fromARGB(193, 255, 255, 255),
                        // boxShadow: const [
                        //   BoxShadow(
                        //       color: Colors.black26,
                        //       offset: Offset(1, 1),
                        //       blurRadius: 17)
                        // ],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    top: 18,
                    left: 20,
                    child: Text(
                      'log in with instragram',
                      style: color,
                    ),
                  ),
                  Positioned(
                    top: 47,
                    left: 20,
                    child: Text(
                      'Trinity',
                      style: color.copyWith(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                      top: 48,
                      left: 100,
                      child: Image.asset('assets/images/img2.png')),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Image.asset(
                      'assets/images/img3.png',
                      width: 55,
                      height: 70,
                    ),
                  ),
                ]),
              ),
            ),
            Center(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text(
                'Switch Account\n',
                style: color,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
