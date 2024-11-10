import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderPageFooter extends StatefulWidget {
  const HeaderPageFooter({super.key});

  @override
  State<HeaderPageFooter> createState() => _HeaderPageFooter();
}

class _HeaderPageFooter extends State<HeaderPageFooter> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // tutaj trzeba zmienić to na strony które się będą wyświetlać
    Text(
      'Index 0: Homeaaaa',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(
          alignment: Alignment.center,  
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: SizedBox(
            width: 44,
            height: 44,
            child: SvgPicture.asset('assets/img/gear.svg'),
          ),
        ),
        title: Container(
            margin: const EdgeInsets.only(top: 15), child: const Text('ESSA')),
        actions: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20, top: 10),
              child: SizedBox(
                width: 44,
                height: 44,
                child: SvgPicture.asset('assets/img/user.svg'),
              )),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/img/droplet.svg',
              width: 32,
              height: 39,
              colorFilter: _selectedIndex == 0
                  ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                  : const ColorFilter.mode(
                      Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/img/list.svg',
              width: 38,
              height: 26,
              colorFilter: _selectedIndex == 1
                  ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                  : const ColorFilter.mode(
                      Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/img/cpu.svg',
              width: 51,
              height: 51,
              colorFilter: _selectedIndex == 2
                  ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                  : const ColorFilter.mode(
                      Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/img/house.svg',
              width: 48,
              height: 50,
              colorFilter: _selectedIndex == 3
                  ? const ColorFilter.mode(Color(0xff14AE5C), BlendMode.srcIn)
                  : const ColorFilter.mode(
                      Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
