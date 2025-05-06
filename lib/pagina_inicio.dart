import 'package:flutter/material.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff813262),
        title: const Text(
          'Página de Inicio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla1');
              },
              child: const Text('MyMediaQuery'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('MyFloatingActionButton'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('MyStatufulWidget'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('MyChoiceChip'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('MyAspectRatio'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('MyNullAwareOperators'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('MyListener'),
            )),
            const SizedBox(height: 10.0),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla8');
              },
              child: const Text('MySnackBar'),
            )),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
