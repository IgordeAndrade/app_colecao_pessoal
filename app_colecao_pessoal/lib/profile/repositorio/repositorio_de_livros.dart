import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/livro.dart';

// TODO: Há dois repositórios (que na verdade são serviços), mas deveriam estar em um único arquivo.
// TODO: O repositório está no layer errado.

const chaveLivroLista = 'livro_list';

class RepositorioDeLivros {
  late SharedPreferences sharedPreferences;

  Future<List<Livro>> getLivroLista() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString =
        sharedPreferences.getString(chaveLivroLista) ?? '[]';
    final List jsonDecode = json.decode(jsonString) as List;
    return jsonDecode.map((e) => Livro.fromJson(e)).toList();
  }

  void salvarListaDeLivro(List<Livro> livros) {
    final String jsonString = json.encode(livros);
    sharedPreferences.setString(chaveLivroLista, jsonString);
  }
}
