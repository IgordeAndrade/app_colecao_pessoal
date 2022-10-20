// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:app_colecao_pessoal/page/pagina_conteudo_do_filme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../profile/models/item.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ItemDaListaFilme extends StatelessWidget {
  ItemDaListaFilme({super.key, required this.item, required this.removerItem});

  Item item;
  DateTime data = DateTime.now();
  final Function(Item) removerItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return PaginaConteudoDoFilme(
                item: item,
                key: Key(item.id),
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                borderRadius: BorderRadius.circular(4),
                icon: Icons.delete,
                label: 'Apagar',
                backgroundColor: Colors.red[200] as Color,
                onPressed: (context) {
                  removerItem(item);
                },
              ),
            ],
          ),
          child: Card(
            color: Colors.grey[200],
            shadowColor: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.movie,
                          size: 30,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          item.titulo,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.blue,
                  ),
                  // SizedBox(width: 100, child: ,)
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceChip(
                          label: Text(
                            item.generoDoItem,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          selected: true,
                          selectedColor: Colors.blue[100],
                        ),
                        const SizedBox(width: 50),
                        const Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            'Classificação ${item.notaDoUsuario} estrelas',
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                      'Adicionado em: ${DateFormat('dd/MM/yyyy').format(data)}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}