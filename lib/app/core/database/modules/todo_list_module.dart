import 'package:flutter/material.dart';
import 'package:flutter_todo_list_provider/app/modules/todo_list_page.dart';
import 'package:provider/single_child_widget.dart';

abstract class TodoListModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TodoListModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  })  : _routers = routers,
        _bindings = bindings;

  //Métodos para declarar nossas rotas dentro do materialapp
  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(
        key,
        (_) => TodoListPage(
              bindings: _bindings,
              page: pageBuilder,
            )));
  }
}
