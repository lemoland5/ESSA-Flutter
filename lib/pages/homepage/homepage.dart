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
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width * 0.88,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    style: const TextStyle(
                      fontSize: 34,
                    ),
                    'Witaj $_imie',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 0, 0, 0), // Kolor obramowania
                        width: 1.0, // Grubość obramowania
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Row(
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/img/color-droplet.svg',
                                width: 30,
                                height: 37,
                              ),
                              Container(
                                width: 230,
                                height: 24,
                                margin: const EdgeInsets.only(left: 18),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3F8CD4),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Text('20 m3'),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/img/gaz.png',
                              width: 31,
                              height: 36,
                            ),
                            Container(
                              width: 191,
                              height: 24,
                              margin: const EdgeInsets.only(left: 17),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffF08132),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text('18 m3'),
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
                    margin: const EdgeInsets.only(top: 20, bottom: 15),
                    child: const Text(
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      'Twoje skróty',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 0, 0, 0), // Kolor obramowania
                            width: 1.0, // Grubość obramowania
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              child: const Text(
                                'Salon',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/img/color-lightning.svg',
                                  width: 20,
                                  height: 25,
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  margin: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: const Color(
                                          0xffFFE448), // Kolor obramowania
                                      width: 2.0, // Grubość obramowania
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        child: SvgPicture.asset(
                                          'assets/img/yelow-dot.svg',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.only(right: 4),
                                          child: const Text('25%'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 0, 0, 0), // Kolor obramowania
                            width: 1.0, // Grubość obramowania
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dodaj widżet',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12),
                              child: SvgPicture.asset('assets/img/plus.svg'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Kolor obramowania
                              width: 1.0, // Grubość obramowania
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 100],
                              colors: [
                                Color(0xff999999),
                                Color(0xff4B4B4B),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: const Text(
                                  'Zmniejszyłeś ślad węglowy o:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: '30kg CO', // Tekst główny
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: const Offset(0,
                                            8), // Przesunięcie w dół, aby stworzyć efekt indeksu dolnego
                                        child: const Text(
                                          '2', // Tekst w indeksie dolnym
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors
                                                .white, // Mniejszy rozmiar, aby dopasować do indeksu dolnego
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Kolor obramowania
                              width: 1.0, // Grubość obramowania
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 72],
                              colors: [
                                Color(0xffABBEFB),
                                Color(0xff58D66F),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: const Text(
                                  'To tak jak posadzenie:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/img/tree.png',
                                    width: 42,
                                    height: 42,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
