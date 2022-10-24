import 'package:app_colecao_pessoal/global/theme.dart';
import 'package:app_colecao_pessoal/page/pagina_add_filme.dart';
import 'package:app_colecao_pessoal/page/pagina_add_usuario.dart';
import 'package:app_colecao_pessoal/widget/card_do_usuario.dart';
import 'package:app_colecao_pessoal/page/pagina_conteudo_do_filme.dart';
import 'package:app_colecao_pessoal/page/pagina_inicial.dart';
import 'package:app_colecao_pessoal/page/pagina_lista_de_filmes.dart';
import 'package:app_colecao_pessoal/page/pagina_lista_de_livros.dart';
import 'package:app_colecao_pessoal/page/pagina_navegacao.dart';
import 'package:flutter/material.dart';
import 'global/app_controller.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: ((context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: AppController.instance.isDark ? Themes.dark : Themes.light,
            darkTheme: Themes.dark,
            themeMode: ThemeMode.light,
            home: const PaginaNavegacao(),
            routes: {
              //TODO: Na Xports escrevemos tudo em inglês, exceto as strings que aparecem na UI.
              //TODO: Rotas nomeadas pouco usadas.
              '/PaginaNavegacao': (context) => const PaginaNavegacao(),
              '/PaginaInicial': (context) => const PaginaInicial(),
              '/PaginaAddFilme': (context) => const PaginaAddFilme(),
              '/PaginaAddUsuario': (context) => const PaginaAddUsuario(),
              '/PaginaListaDeFilmes': (context) => const PaginaListaDeFilmes(),
              '/PaginaListaDeLivros': (context) => const PaginaListaDeLivros(),
              '/PaginaConteudoDoFilme': (context) => PaginaConteudoDoFilme(),
              //TODO: A página abaixo não é chamada em lugar algum
              '/PaginaDoUsuario': (context) => CardDoUsuario(),
            },
          );
        }));
  }
}
