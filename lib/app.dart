import 'package:bloc_basics_todo_app_example/features/todo/cubit/todo_cubit.dart';
import 'package:bloc_basics_todo_app_example/todo_repository_impl.dart';
import 'package:bloc_basics_todo_app_example/todo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bloc Tutorial",
      home: BlocProvider(
        create: (context) => TodoCubit(TodoRepositoryImpl()),
        child: const TodoNameView(),
      ),
    );
  }
}
