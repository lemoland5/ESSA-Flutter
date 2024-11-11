import 'package:essa/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final String _imie = imie;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.88,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: Text(
                    style: const TextStyle(
                      fontSize: 34,
                    ),
                    'Witaj $_imie',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/color-lightning.svg',
                            width: 28,
                            height: 40,
                          ),
                          Container(
                            width: 163,
                            height: 24,
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFE448),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text('4 kWh'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/color-droplet.svg',
                            width: 30,
                            height: 37,
                          ),
                          Container(
                            width: 163,
                            height: 24,
                            margin: const EdgeInsets.only(left: 18),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFE448),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text('4 kWh'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/img/gaz.png',
                            width: 31,
                            height: 36,
                          ),
                          Container(
                            width: 163,
                            height: 24,
                            margin: const EdgeInsets.only(left: 17),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFE448),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text('4 kWh'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Text(
                    'Witaj $_imie',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text(
                    'Witaj $_imie',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: Text(
                    'Witaj $_imie',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
