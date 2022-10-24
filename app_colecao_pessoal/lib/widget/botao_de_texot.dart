import 'package:flutter/material.dart';

//TODO: Nome do arquivo está errado.
// O isolamento está conforme à Xports

class BotaoDeTexto extends StatelessWidget {
  const BotaoDeTexto(
      {super.key, required this.tirulo, required this.aoPressionar});

  //TODO: O nome da variável abaixo está errado.
  final String tirulo;
  final void Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: aoPressionar,
      child: Text(
        tirulo,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
