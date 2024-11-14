import 'package:essa/header_page_footer.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HeaderPageFooter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
