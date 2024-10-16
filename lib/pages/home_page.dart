import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_tab.dart';
import 'package:flutter_application_1/tab/donut_tab.dart';
import 'package:flutter_application_1/tab/burger_tab.dart';
import 'package:flutter_application_1/tab/smoothie_tab.dart';
import 'package:flutter_application_1/tab/pancake_tab.dart';
import 'package:flutter_application_1/tab/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut tab con texto debajo
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyTab(iconPath: 'lib/icons/donut.png'),
        SizedBox(height: 4), // Espacio entre el ícono y el texto
        Text("Donuts", style: TextStyle(fontSize: 12)),
      ],
    ),

    // Burger tab con texto debajo
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyTab(iconPath: 'lib/icons/burger.png'),
        SizedBox(height: 4),
        Text("Burgers", style: TextStyle(fontSize: 12)),
      ],
    ),

    // Smoothie tab con texto debajo
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyTab(iconPath: 'lib/icons/smoothie.png'),
        SizedBox(height: 4),
        Text("Smoothies", style: TextStyle(fontSize: 12)),
      ],
    ),

    // Pancakes tab con texto debajo
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyTab(iconPath: 'lib/icons/pancakes.png'),
        SizedBox(height: 4),
        Text("Pancakes", style: TextStyle(fontSize: 12)),
      ],
    ),

    // Pizza tab con texto debajo
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyTab(iconPath: 'lib/icons/pizza.png'),
        SizedBox(height: 4),
        Text("Pizza", style: TextStyle(fontSize: 12)),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
                print('Botón de Menú');
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                  print('Botón de Usuario');
                },
              ),
            )
          ],
        ),
        body: Column(children: [
          // TEXTO "I want to eat"
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text("I want to ", style: TextStyle(fontSize: 32)),
                Text("Sleep",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
          // Tap Bar
          TabBar(tabs: myTabs),
          // Tap bar view
          Expanded(
            child: TabBarView(children: [
              // Donut tab
              DonutTab(),
              // Buger tab
              const BurgerTab(),
              // Smoothie tab
              const SmoothieTab(),
              // Pancake tab
              const PancakeTab(),
              // Pizza tab
              const PizzaTab(),
            ]),
          )
          // Carrito
        ]),
      ),
    );
  }
}
