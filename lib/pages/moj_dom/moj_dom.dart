import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MojDom extends StatefulWidget {
  const MojDom({super.key});

  @override
  State<MojDom> createState() => _MojDomState();
}

class _MojDomState extends State<MojDom> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Mój Dom",
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 2.0),
                ),
              ),
              FractionallySizedBox(
                  widthFactor: .9,
                  // heightFactor: .52,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      child: SvgPicture.asset(
                                        'assets/img/color-lightning.svg',
                                        width: 18,
                                        height: 26,
                                      ),
                                    ),
                                    Positioned(
                                      left: 24,
                                      child: SvgPicture.asset(
                                        'assets/img/color-droplet.svg',
                                        width: 20,
                                        height: 25,
                                      ),
                                    ),
                                    Positioned(
                                      left: 49,
                                      child: Image.asset(
                                        'assets/img/gaz.png',
                                        width: 20,
                                        height: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text("Kuchnia"),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Image.asset(
                                    "assets/img/arrow-right.png",
                                    width: 10,
                                    height: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  width: 60,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.yellow)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/img/yelow-dot.svg",
                                              width: 15,
                                              height: 15,
                                            ),
                                            const Spacer(),
                                            const Text("63%"),
                                          ],
                                        ),
                                      ))),
                              SizedBox(
                                  width: 60,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.blue)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/img/blue-dot.svg",
                                              width: 15,
                                              height: 15,
                                            ),
                                            const Spacer(),
                                            const Text("30%"),
                                          ],
                                        ),
                                      ))),
                              SizedBox(
                                  width: 60,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.orange)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/img/orange-dot.svg",
                                              width: 15,
                                              height: 15,
                                            ),
                                            const Spacer(),
                                            const Text("100%"),
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                          Text(
                            "34%",
                            style: DefaultTextStyle.of(context)
                                .style
                                .apply(fontSizeFactor: 2.0),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/img/color-lightning.svg',
                                  width: 20,
                                  height: 24,
                                ),
                                const Text('"Łukasz"'),
                                const Text(' - '),
                                const Text('10 kWh'),
                                const Text(' - '),
                                const Text('63%'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/img/color-droplet.svg',
                                  width: 20,
                                  height: 24,
                                ),
                                const Text('"Tomek"'),
                                const Text(' - '),
                                const Text('6 m³'),
                                const Text(' - '),
                                const Text('30%'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/img/gaz.png',
                                  width: 20,
                                  height: 24,
                                ),
                                const Text('"Wojtek"'),
                                const Text(' - '),
                                const Text('18 m³'),
                                const Text(' - '),
                                const Text('100%'),
                              ],
                            ),
                          )
                        ],
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FractionallySizedBox(
                    widthFactor: .9,

                    // heightFactor: .52,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/img/color-lightning.svg",
                              width: 18,
                              height: 26,
                            ),
                            const Text("Salon"),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Image.asset(
                                "assets/img/arrow-right.png",
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FractionallySizedBox(
                    widthFactor: .9,

                    // heightFactor: .52,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: SvgPicture.asset(
                                    'assets/img/color-lightning.svg',
                                    width: 18,
                                    height: 26,
                                  ),
                                ),
                                Positioned(
                                  left: 24,
                                  child: SvgPicture.asset(
                                    'assets/img/color-droplet.svg',
                                    width: 20,
                                    height: 25,
                                  ),
                                ),
                              ],
                            ),
                            const Text("Łazienka"),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Image.asset(
                                "assets/img/arrow-right.png",
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
