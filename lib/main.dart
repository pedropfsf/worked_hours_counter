import 'package:flutter/material.dart';
import 'package:worked_hours_counter/widgets/button_primary.dart';
import 'package:worked_hours_counter/widgets/button_secondary.dart';
import 'package:worked_hours_counter/widgets/container_screen.dart';
import 'package:worked_hours_counter/widgets/money_field.dart';
import 'package:worked_hours_counter/widgets/numerical_field.dart';
import 'package:worked_hours_counter/widgets/text_visibility.dart';
import 'package:worked_hours_counter/widgets/title_screen.dart';

main() => runApp(const App());

class AppState extends State<App> {
  String result = '';
  int hours = 0;
  int minutes = 0;
  int valuePerHour = 0;
  bool isResultVisible = false;

  void hide() {
    setState(() {
      isResultVisible = false;
    });
  }

  void calculate() {
    int totalMinutes = (hours * 60) + minutes;
    double timeWorked = totalMinutes / 60;
    double salary = timeWorked * valuePerHour;

    setState(() {
      result = 'R\$${salary.toStringAsFixed(2)}';
      isResultVisible = true;
    });
  }

  void changeHours(String value) {
    setState(() {
      hours = int.parse(value);
    });
  }
  
  void changeMinutes(String value) {
    setState(() {
      minutes = int.parse(value);
    });
  }

  void changeValuePerHour(String value) {
    setState(() {
      valuePerHour = int.parse(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ContainerScreen(
        children: [
          const TitleScreen(text: 'Calculadora de horas trabalhadas'),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumericalField(label: 'Horas', onChanged: changeHours,),
              const SizedBox(width: 16),
              NumericalField(label: 'Minutos', onChanged: changeMinutes),
            ]
          ),
          const SizedBox(height: 24),
          MoneyField(label: 'Valor por hora', onChanged: changeValuePerHour),
          const SizedBox(height: 24),
          TextVisibility(
            visible: isResultVisible, 
            text: result,
            color: Colors.green, 
          ),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: isResultVisible,
                child: ButtonSecondary(
                  label: 'Esconder',
                  onPressed: hide,
                )
              ),
              const SizedBox(width: 16),
              ButtonPrimary(
                label: 'Calcular', 
                onPressed: calculate
              ),
            ]
          )
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