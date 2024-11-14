import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MojeLiczniki extends StatefulWidget {
  const MojeLiczniki({super.key});

  @override
  State<MojeLiczniki> createState() => _MojeLicznikiState();
}

class _MojeLicznikiState extends State<MojeLiczniki> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Moje Liczniki",
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
                                SvgPicture.asset(
                                  'assets/img/color-lightning.svg',
                                  width: 18,
                                  height: 26,
                                ),
                                const Text('"Łukasz"'),
                                const Text(' - '),
                                const Text('Kuchnia'),
                                SvgPicture.asset(
                                  "assets/img/wifi.svg",
                                  width: 20,
                                  height: 20,
                                ),
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: 250,
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 10,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nazwa",
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .apply(fontSizeFactor: 1.5),
                                  ),
                                  FittedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const Text("Łukasz   "),
                                            SvgPicture.asset(
                                              "assets/img/edit.svg",
                                              width: 10,
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Pomieszczenie",
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .apply(fontSizeFactor: 1.5),
                                  ),
                                  FittedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const Text("Kuchnia   "),
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
                                    ),
                                  ),
                                  Text(
                                    "Statystyki",
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .apply(fontSizeFactor: 1.5),
                                  ),
                                  FittedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text("Policzony prąd - 10kWh"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text("Status - Aktywny"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text("Wersja - v1.08.02"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
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
                        padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/img/color-droplet.svg',
                              width: 18,
                              height: 26,
                            ),
                            const Text('"Adam"'),
                            const Text(' - '),
                            const Text('Łazienka'),
                            SvgPicture.asset(
                              "assets/img/wifi.svg",
                              width: 20,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Image.asset(
                                  "assets/img/arrow-right.png",
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            )
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
