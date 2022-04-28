import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  final List<bool> isSelected = [false, false, false];

  _showSnackBar({required String text}) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'Whatever!',
          onPressed: () {ScaffoldMessenger.of(context).clearSnackBars();},
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.star),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.stream),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.memory),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.star),
        onPressed: () => {_showSnackBar(text: 'FloatingActionButton'),},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  TextButton(
                    child: const Text('TextButton 1'),
                    onPressed: () => {_showSnackBar(text: 'TextButton 1'),},
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    child: const Text('TextButton 2'),
                    onPressed: () => {_showSnackBar(text: 'TextButton 2'),},
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    child: const Text('TextButton 3'),
                    onPressed: () => {_showSnackBar(text: 'TextButton 3'),},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () => {_showSnackBar(text: 'ElevatedButton 1'),},
                    child: const Text('ElevatedButton 1'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () => {_showSnackBar(text: 'ElevatedButton 2'),},
                    child: const Text('ElevatedButton 2'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () => {_showSnackBar(text: 'ElevatedButton 3'),},
                    child: const Text('ElevatedButton 3'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  OutlinedButton(
                    onPressed: () => {_showSnackBar(text: 'OutlinedButton 1'),},
                    child: const Text('OutlinedButton 1'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  OutlinedButton(
                    onPressed: () => {_showSnackBar(text: 'OutlinedButton 2'),},
                    child: const Text('OutlinedButton 2'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  OutlinedButton(
                    onPressed: () => {_showSnackBar(text: 'OutlinedButton 3'),},
                    child: const Text('OutlinedButton 3'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ToggleButtons(
                  children: const [
                    Icon(Icons.favorite),
                    Icon(Icons.email),
                    Icon(Icons.auto_awesome),
                  ],
                  isSelected: isSelected,
                  onPressed: (index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                      _showSnackBar(text: 'ToggleButton [$index] is [${isSelected[index]}]');
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
