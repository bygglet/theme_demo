import 'package:flutter/material.dart';
import 'package:theme_demo/buttons_page.dart';
import 'package:theme_demo/text_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final bool useCustomTheme = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC0C0C0)),
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Navigation'),
            ),
            ListTile(
                title: const Text('Text'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextPage()),
                  );
                }),
            const ListTile(
              title: Text('Colors'),
            ),
            ListTile(
              title: const Text('Buttons'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
