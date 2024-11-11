import 'package:essa/pages/homepage/homepage.dart';
import 'package:essa/pages/konto/konto.dart';
import 'package:essa/pages/moj_dom/moj_dom.dart';
import 'package:essa/pages/moje_liczniki/moje_liczniki.dart';
import 'package:essa/pages/statystyki1/statystyki1.dart';
import 'package:essa/pages/statystyki2/statystyki2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'globals.dart';

class HeaderPageFooter extends StatefulWidget {
  const HeaderPageFooter({super.key});

  @override
  State<HeaderPageFooter> createState() => _HeaderPageFooter();
}

class _HeaderPageFooter extends State<HeaderPageFooter> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // tutaj trzeba zmienić to na strony które się będą wyświetlać
    Homepage(),
    Statystyki1(),
    MojeLiczniki(),
    MojDom(),
    Statystyki2(),
    Konto(),
  ];

  bool _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfffef7ff),
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: SizedBox(
            width: 44,
            height: 44,
            child: GestureDetector(
              onTap: () {
                _onItemTapped(4);
              },
              child: SvgPicture.asset(
                'assets/img/gear.svg',
                width: 44,
                height: 44,
                colorFilter: _selectedIndex == 4
                    ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
              ),
            ),
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 15),
          child: const Text('ESSA'),
        ),
        actions: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20, top: 10),
              child: SizedBox(
                  width: 44,
                  height: 44,
                  child: GestureDetector(
                    onTap: () {
                      _onItemTapped(5);
                    },
                    child: SvgPicture.asset(
                      'assets/img/user.svg',
                      width: 44,
                      height: 44,
                      colorFilter: _selectedIndex == 5
                          ? const ColorFilter.mode(
                              Color(0xff14AE5C), BlendMode.srcIn)
                          : const ColorFilter.mode(
                              Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
                    ),
                  ))),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Divider(
            thickness: 1.0,
            color: Color.fromARGB(30, 0, 0, 0),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              _onItemTapped(0);
            },
            child: Expanded(
              child: SizedBox(
                height: 85,
                child: SvgPicture.asset(
                  'assets/img/droplet.svg',
                  width: 32,
                  height: 39,
                  colorFilter: _selectedIndex == 0
                      ? const ColorFilter.mode(
                          Color(0xff14AE5C), BlendMode.srcIn)
                      : const ColorFilter.mode(
                          Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _onItemTapped(1);
            },
            child: Expanded(
              child: SvgPicture.asset(
                'assets/img/list.svg',
                width: 40,
                height: 28,
                colorFilter: _selectedIndex == 1
                    ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _onItemTapped(2);
            },
            child: Expanded(
              child: SvgPicture.asset(
                'assets/img/cpu.svg',
                width: 48,
                height: 48,
                colorFilter: _selectedIndex == 2
                    ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _onItemTapped(3);
            },
            child: Expanded(
              child: SvgPicture.asset(
                'assets/img/house.svg',
                width: 48,
                height: 50,
                colorFilter: _selectedIndex == 3
                    ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
