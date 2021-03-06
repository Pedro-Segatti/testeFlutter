import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_trabalho/dados/pDados.dart';
import 'package:flutter_trabalho/modelos/model.dart';

class add_lista with ChangeNotifier{
  final Map<String, model> _item = {...pDados};

  List<model> get all {
    return[..._item.values];
  }

  int get count{
    return _item.length;
  }

  model byIndex(int i){
    return _item.values.elementAt(i);
  }

  void put(model m){
    if(m == null){
      return;
    }

    final id = Random().nextDouble().toString();
    _item.putIfAbsent(id, () => model(
      id: id,
      nome: m.nome,
      idade: m.idade,
      descricao: m.descricao,
      avatar: m.avatar,
    ));
    notifyListeners();
  }
}