import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({Key? key}) : super(key: key);

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choice Chip')),
      body: Padding(
        padding: const EdgeInsets.all(
            16.0), // Añadimos un padding para el botón y el ChoiceChip
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
            const SizedBox(
                height: 20), // Espacio entre el botón y el ChoiceChip
            Center(
              child: ChoiceChip(
                avatar: const Icon(Icons.ac_unit),
                label: const Text('Choice Chip'),
                selected: _isSelected,
                onSelected: (newBoolValue) {
                  setState(() {
                    _isSelected = newBoolValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
