import 'package:flutter/material.dart';
import 'pagina_inicio.dart';
import 'media_query.dart';
import 'floating_action_buttonn.dart';
import 'stateful_widget.dart';
import 'choice_chip.dart';
import 'aspect_ratio.dart';
import 'listener.dart';
import 'null_aware_operators.dart';
import 'snack_bar.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PaginaInicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const MyMediaQuery(),
        '/pantalla2': (context) => const MyFloatingActionButton(),
        '/pantalla3': (context) => MyStatufulWidget(number: 0),
        '/pantalla4': (context) => const MyChoiceChip(),
        '/pantalla5': (context) => const MyAspectRatio(),
        '/pantalla6': (context) => MyNullAwareOperators(),
        '/pantalla7': (context) => const MyListener(),
        '/pantalla8': (context) => const MySnackBar(),
      },
    );
  }
}
