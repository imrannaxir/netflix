import 'package:flutter/material.dart';
import 'package:netflix/route_names.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: SizedBox(
          height: 80,
          child: Image.asset(
            'assets/second_screen/netflix.png',
          ),
        ),
        actions: [
          SizedBox(
            width: 25,
            child: Image.asset(
              'assets/second_screen/pencil.png',
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: secondScreen(),
    );
  }

  Widget secondScreen() {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Who\'s Watching ?',
                style: TextStyle(
                  color: Colors.grey[350],
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteNames.homeScreen);
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/second_screen/zohaib.jpg',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            //  color: Colors.black,
                          ),
                          // child: Image.asset(
                          //   'assets/second_screen/zohaib.jpg',
                          // ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Zohaib Mushtaq',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.homeScreen,
                          );
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/second_screen/adeel.jpg',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            //  color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Adeel Nasir',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.homeScreen,
                          );
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/second_screen/saim.jpg',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Saim Ahmad',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteNames.homeScreen);
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/second_screen/momin.jpg',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Momin Naveed',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.homeScreen);
                    },
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/second_screen/imran.jpg',
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Imran Nazeer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[350],
                      ),
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
