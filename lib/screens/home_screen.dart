import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/card_information.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   var numero=3;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
  backgroundColor: const Color.fromARGB(255, 252, 215, 228),
  appBar: AppBar(
    title: const Text("Home Screen"),
    backgroundColor: const Color.fromARGB(255, 68, 255, 246),
  ),

  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(
          "Número de clicks",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 10),
        Text("$numero",),
        SizedBox(height: 30),
        
      ],
    ),
  ),

  floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 68, 255, 246),
        child: const Icon(Icons.add),
        onPressed: () {
           numero++;
          print(numero);
          print("Hola");
          setState(() {
           
          });
        },
      ),
      const SizedBox(width: 20,),

      FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 68, 255, 246),
        child: const Icon(Icons.restore),
        onPressed: () {
          numero = 0;
          print(numero);
          print("Hola");
          setState(() {
           
          });
          
        },
      ),
       const SizedBox(width: 20,),

   FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 68, 255, 246),
        child: const Icon(Icons.remove),
        onPressed: () {
          numero--;
          print(numero);
          print("Hola");
          setState(() {
           
          });
        },
      ),
      
    ],
  ),
);
  }
}