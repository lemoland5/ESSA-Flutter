import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Statystyki1 extends StatefulWidget {
  const Statystyki1({super.key});

  @override
  State<Statystyki1> createState() => _Statystyki1State();
}

class _Statystyki1State extends State<Statystyki1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Obsługa przewijania na mniejszych ekranach
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Statystyki",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Data"),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Rodzaj"),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Liczniki"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: 250,
                height: 250,
                child: CustomPaint(
                  painter: PieChartPainter(),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/img/color-droplet.svg',
                              width: 24,
                              height: 24,
                            ),
                            const Text(
                              "20 m3",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/img/gaz.png',
                              width: 24,
                              height: 24,
                            ),
                            const Text(
                              "18 m3",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/img/color-lightning.svg',
                              width: 24,
                              height: 24,
                            ),
                            const Text(
                              "16 kWh",
                              style: TextStyle(color: Color(0xFFFFE448)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity, // Zajmuje pełną szerokość
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 24,
                  columns: const [
                    DataColumn(
                      label: Center(child: Text("ESSA")),
                    ),
                    DataColumn(
                      label: Center(child: Text("Zużyto")),
                    ),
                    DataColumn(
                      label: Center(child: Text("Oszczędzono")),
                    ),
                    DataColumn(
                      label: Center(child: Text("Koszty")),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/img/color-droplet.svg',
                                width: 24, height: 24),
                            const SizedBox(width: 10),
                            const Expanded(child: Center(child: Text("Woda"))),
                          ],
                        ),
                      ),
                      const DataCell(
                        Center(
                            child:
                                Text("20 m3", overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child:
                                Text("12 m3", overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child: Text("180 zł",
                                overflow: TextOverflow.ellipsis)),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/img/gaz.png',
                                width: 24, height: 24),
                            const SizedBox(width: 10),
                            const Expanded(child: Center(child: Text("Gaz"))),
                          ],
                        ),
                      ),
                      const DataCell(
                        Center(
                            child:
                                Text("18 m3", overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child: Text("10.8 m3",
                                overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child: Text("63.90 zł",
                                overflow: TextOverflow.ellipsis)),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/img/color-lightning.svg',
                                width: 24, height: 24),
                            const SizedBox(width: 10),
                            const Expanded(child: Center(child: Text("Prąd"))),
                          ],
                        ),
                      ),
                      const DataCell(
                        Center(
                            child: Text("16 kWh",
                                overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child: Text("9.6 kWh",
                                overflow: TextOverflow.ellipsis)),
                      ),
                      const DataCell(
                        Center(
                            child: Text("21.76 zł",
                                overflow: TextOverflow.ellipsis)),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Painter do rysowania scalonego wykresu kołowego
class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12;

    // Definicja proporcji dla każdej sekcji wykresu
    final List<Map<String, dynamic>> sections = [
      {"value": 0.3, "color": Colors.orange}, // Woda
      {"value": 0.25, "color": const Color(0xFFFFE448)}, // Gaz
      {"value": 0.45, "color": Colors.blue}, // Prąd
    ];

    double startAngle = -90.0; // Start od góry (270 stopni)

    for (var section in sections) {
      final sweepAngle = 2 * pi * (section["value"] as double);
      paint.color = section["color"] as Color;

      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double radians(double degrees) => degrees * (pi / 180.0);
}
