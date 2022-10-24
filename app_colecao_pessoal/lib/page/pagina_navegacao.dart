import 'package:app_colecao_pessoal/page/pagina_add_usuario.dart';
import 'package:app_colecao_pessoal/page/pagina_inicial.dart';
import 'package:flutter/material.dart';

class PaginaNavegacao extends StatefulWidget {
  const PaginaNavegacao({
    super.key,
  }); // TODO: Quebra de linha Desnecessária

  @override
  State<PaginaNavegacao> createState() => _PaginaNavegacaoState();
}

class _PaginaNavegacaoState extends State<PaginaNavegacao> {
  final List<Widget> pagina = [const PaginaInicial(), const PaginaAddUsuario()];
  int selecaoIdex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selecaoIdex,
        children: pagina,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selecaoIdex,
        onTap: alterarGuia,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //TODO: Quando o tema muda para "light", a cor do item selecionado 
            // permanece a mesma, o que dificulta a visualização.
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          )
        ],
      ),
    );
  }

  void alterarGuia(int index) {
    setState(() {
      selecaoIdex = index;
    });
  }
}
