import 'package:flutter/material.dart';
import 'package:worked_hours_counter/widgets/button_primary.dart';
import 'package:worked_hours_counter/widgets/container_screen.dart';
import 'package:worked_hours_counter/widgets/money_field.dart';
import 'package:worked_hours_counter/widgets/numerical_field.dart';
import 'package:worked_hours_counter/widgets/title_screen.dart';

main() => runApp(const App());

class AppState extends State<App> {
  bool isResultVisible = false;
  String result = 'Resultado';

  void calculate() {
    debugPrint('calculate');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ContainerScreen(
        children: [
          const TitleScreen(text: 'Calculadora de horas trabalhadas'),
          const SizedBox(height: 64),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumericalField(label: 'Horas'),
              SizedBox(width: 16),
              NumericalField(label: 'Minutos'),
            ]
          ),
          const SizedBox(height: 24),
          const MoneyField(label: 'Valor por hora'),
          const SizedBox(height: 24),
          Visibility(
            visible: isResultVisible,
            child: Column(
              children: [
                const SizedBox(height: 48),
                Text(
                  result,
                  style: const TextStyle(
                    fontSize: 32,
                  )
                ),
              ]
            )
          ),
          const SizedBox(height: 64),
          ButtonPrimary(
            label: 'Calcular', 
            onPressed: calculate
          ),
        ],
      )
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}