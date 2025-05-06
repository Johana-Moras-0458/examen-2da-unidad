import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatufulWidget(number: 0),
    );
  }
}

class MyStatufulWidget extends StatefulWidget {
  final int number;
  const MyStatufulWidget({Key? key, required this.number}) : super(key: key);

  @override
  _MyStatufulWidgetState createState() {
    print('Number: $number CreateState');
    return _MyStatufulWidgetState();
  }
}

class _MyStatufulWidgetState extends State<MyStatufulWidget> {
  int number = 0;
  // first lifecycle
  @override
  void initState() {
    super.initState();
    number = widget.number;
    print('Number: ${widget.number} InitState');
  }

  // second lifecycle
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  // check update done in previous page
  @override
  void didUpdateWidget(MyStatufulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Number has changed');
    }
  }

  // rarely used
  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  // dispose method
  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: $number Build');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ),
          SizedBox(
            height: 500,
            width: 350,
            child: TextButton(
              child: Text(
                number.toString(),
                style: const TextStyle(fontSize: 80),
              ),
              onPressed: () {
                setState(() {
                  print('Number: ${widget.number} SetState');
                  number++;
                });
              },
            ),
          ),
          ElevatedButton(
            child: const Text('Página de Inicio'), // Cambié el texto del botón
            onPressed: () {
              Navigator.pop(
                  context); // Usamos pop para regresar a la página anterior
            },
          ),
        ],
      ),
    );
  }
}
