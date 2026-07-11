import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 184, 217, 233),
      child: Row(
        children: [
          const SizedBox(height: 100),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
            ),
          ),
          const SizedBox(width: 10),
          const Text("Morty"),
        ],
      ),
    );
  }
}