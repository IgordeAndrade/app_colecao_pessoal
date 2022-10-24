import 'package:flutter/material.dart';

// TODO: O isolamento está bom, mas o nome da classe não. O nome passa a impressão de ser o botão 
// que leva para a HomePage
class BotaoPaginaInicial extends StatelessWidget {
  const BotaoPaginaInicial({
    super.key,
    required this.icon,
    required this.image,
  });

  final Widget? icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(129, 144, 202, 249),
          ),
        ),
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: icon,
        ),
      ],
    );
  }
}
